
import logging
from langchain_chroma.vectorstores import Chroma
from langchain.text_splitter import CharacterTextSplitter
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_core.output_parsers import StrOutputParser
from langchain_huggingface import HuggingFaceEmbeddings
from langchain_ollama import OllamaLLM
from langchain_ollama import ChatOllama
from langchain_core.messages import HumanMessage, SystemMessage
import os
import json
logger = logging.getLogger(__name__)
os.environ['TF_ENABLE_ONEDNN_OPTS'] = '0'

OLLAMA_MODEL = "qwen3:0.6b"
OLLAMA_API_URL = os.getenv("OLLAMA_API_URL")
EMBEDDING_MODEL = "E:/tools/AI/modelscope/models/Qwen/Qwen3-Embedding-0.6B"


# 1.数据加载与预处理
def load_data(file_path:str) -> list:
    """数据加载与预处理"""
    logger.info("1.加载数据...")
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    texts = []
    metadatas = []
    for item in data["条文列表"]:
        # 拼接文本（原文+辨证要点+方剂，便于向量检索）
        text = f"编号：{item['编号']}\n原文：{item['原文']}\n辨证要点：{item['辨证要点']}\n对应方剂：{item['对应方剂']}"
        texts.append(text)
        metadatas.append({"编号": item["编号"], "方剂": item["对应方剂"]})
    return texts, metadatas

def build_vetor_database(texts: list, metadatas: list):
    logger.info("2.构建向量知识库...")
    EMBEDDING_MODEL = "E:/tools/AI/modelscope/models/Qwen/Qwen3-Embedding-0.6B"
    logger.info("2.构建向量知识库...")
    text_splitter = CharacterTextSplitter(separator="\n",chunk_size=100, chunk_overlap=20,length_function=len)
    splits = text_splitter.create_documents(texts, metadatas)
    #embeddings = OpenAIEmbeddings(openai_api_key=OPENAI_API_KEY,openai_api_base=BASE_URL,model=EMBEDDING_MODEL)
    model_kwargs = {'device': 'cpu'}
    encode_kwargs = {'normalize_embeddings': True}
    embeddings = HuggingFaceEmbeddings(model_name=EMBEDDING_MODEL,model_kwargs=model_kwargs,encode_kwargs=encode_kwargs)
    logger.log("embeddings:",embeddings)
    db = Chroma.from_documents(documents=splits, embedding=embeddings, persist_directory="./shanghanlun_chroma_db")
    print(db)


# 2.构建向量知识库
def build_rag_database(texts: list, metadatas: list) -> Chroma:
    """构建向量知识库"""
    logger.info("2.构建向量知识库...")
    text_splitter = CharacterTextSplitter(separator="\n",chunk_size=100, chunk_overlap=20,length_function=len)
    splits = text_splitter.create_documents(texts, metadatas)
    #embeddings = OpenAIEmbeddings(openai_api_key=OPENAI_API_KEY,openai_api_base=BASE_URL,model=EMBEDDING_MODEL)
    model_kwargs = {'device': 'cpu'}
    encode_kwargs = {'normalize_embeddings': True}
    embeddings = HuggingFaceEmbeddings(model_name=EMBEDDING_MODEL,model_kwargs=model_kwargs,encode_kwargs=encode_kwargs)
    db = Chroma.from_documents(documents=splits, embedding=embeddings, persist_directory="./shanghanlun_chroma_db")
    # Milvus.from_documents(documents=splits, embedding=embeddings)
    # FAISS.from_documents(documents=splits, embedding=embeddings)
    return db
# 2.构建向量知识库
def build_diagnosis_chain(db: Chroma):
    CURR_PATH = os.path.dirname(os.path.abspath(__file__))
    print(f"当前路径: {CURR_PATH}")
    try:
        with open(CURR_PATH + "/../../data/tcm/shanghanlun_template.txt","r",encoding="utf-8" ) as f:
            template = f.read()
    except Exception as e:
        logger.error("读取模板失败",e)
        raise e
    # 提示词模板
    prompt = ChatPromptTemplate.from_template(template)
    retriever = db.as_retriever(search_type="similarity", search_kwargs={"k": 3})
    
    llm = ChatOllama(model=OLLAMA_MODEL,base_url=OLLAMA_API_URL, temperature=0.9)
    #llm = OllamaLLM(model=OLLAMA_MODEL,base_url=OLLAMA_API_URL, temperature=0.9)
    chain = ({"context": retriever, "question": RunnablePassthrough()} | prompt | llm | StrOutputParser())
    return chain
    

def TCMmain():
    print("===== 鸢尾花分类器 AI 项目 =====")
    texts = []
    metadatas = []
    texts.append("aaaaa")
    build_vetor_database(texts, metadatas)

if __name__ == "__main__":
    logger.info("开始执行...")
    CURR_PATH = os.path.dirname(os.path.abspath(__file__))
    file_path = os.path.join(CURR_PATH, '../../data/tcm/shanghanlun.json')
    print(CURR_PATH)
    print(file_path)
     #步骤1：加载数据
    texts, metadatas = load_data(file_path)

     # 步骤2：构建向量库（首次运行构建，后续可注释直接加载）
    db = build_rag_database(texts, metadatas)

    # 步骤3：构建辨证链
    diagnosis_chain = build_diagnosis_chain(db)

     # 步骤4：用户症状输入 & 辨证推理
    # 示例1：太阳中风证
    user_symptom_1 = "患者头痛发热，汗出恶风，鼻鸣干呕，脉浮"
    print("=== 辨证案例1 ===")
    result_1 = diagnosis_chain.invoke(user_symptom_1)
    print(result_1)

     # 示例2：少阳病
    user_symptom_2 = "患者口苦，咽干，头晕目眩，无恶寒发热"
    print("\n=== 辨证案例2 ===")
    result_2 = diagnosis_chain.invoke(user_symptom_2)
    print(result_2)
    
    # 示例3：自定义症状（可替换为实际问诊内容）
    user_symptom_3 = input("\n请输入患者症状：")
    if user_symptom_3.lower() == "q":
        exit()

    print("\n=== 自定义辨证结果 ===")
    result_3 = diagnosis_chain.invoke(user_symptom_3)
    print(result_3)

