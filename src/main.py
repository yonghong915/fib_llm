# -*- coding: utf-8 -*-
import  logging
from utils import llm_utils
from dotenv import load_dotenv
from embedding.embeddingTest import Person
import os
import rag.rag_shanghan as rag_shanghan
logger = logging.getLogger(__name__)
FORMAT='%(asctime)s - %(funcName)s - %(levelname)s - %(message)s'
logging.basicConfig(filename=None,filemode='a',format=FORMAT, encoding='utf-8',level=logging.DEBUG)

def main():
    logger.info("enter fine.")

    #加载环境变量（需提前在 .env 文件配置 OPENAI_API_KEY）
    load_dotenv()
    script_dir = os.path.dirname(os.path.abspath(__file__))
    file_path = os.path.join(script_dir, '../data/shanghanlun.json')

    #步骤1：加载数据
    texts, metadatas = rag_shanghan.load_data(file_path)

     # 步骤2：构建向量库（首次运行构建，后续可注释直接加载）
    db = rag_shanghan.build_rag_database(texts, metadatas)

    # 步骤3：构建辨证链
    diagnosis_chain = rag_shanghan.build_diagnosis_chain(db)

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
   
if __name__ == '__main__':
    logger.info("we are studying python.")
    main()