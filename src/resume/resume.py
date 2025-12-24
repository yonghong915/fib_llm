import os
import pandas as pd
from docx import Document
from docxtpl import DocxTemplate
import logging
import json
import random
import time
# ====================== 1. 配置项（改这里！适配你的业务） ======================
# Excel配置
EXCEL_FILE = "toubiao.xlsx"       # Excel文件路径
EXCEL_SHEET = "人员清单"            # 工作表名
EXCEL_FIELDS = ["序号", "工号", "姓名", "身份证","性别","年龄","职位","级别","职称","毕业院校","专业","学历","司龄","担任现有职务年限","服务地点","编写人"]  # Excel要提取的字段
EXCEL_KEY = "工号" 
# Word配置
WORD_TEMPLATE = "resume_template.docx"   # Word模板路径
SAVE_DIR = "C:/Users/fangyh/Desktop/resumes/"   # 生成文件保存目录
NULL_DEFAULT = "无"               # 空值默认填充内容
CURR_PATH = os.path.dirname(os.path.abspath(__file__))
EXCEL_FILE = os.path.join(CURR_PATH, EXCEL_FILE)
WORD_TEMPLATE = os.path.join(CURR_PATH, WORD_TEMPLATE)
JSON_PATH = os.path.join(CURR_PATH, "pro_data.json")

logger = logging.getLogger(__name__)
FORMAT='%(asctime)s - %(funcName)s - %(levelname)s - %(message)s'
logging.basicConfig(filename=None,filemode='a',format=FORMAT, encoding='utf-8',level=logging.INFO)
# ====================== 2. 工具函数（通用，无需修改） ======================
def init_dir(dir_path):
    """初始化保存目录，不存在则创建"""
    if not os.path.exists(dir_path):
        os.makedirs(dir_path)

def get_excel_data():
    """读取Excel数据，清洗并去重"""
    df = pd.read_excel(EXCEL_FILE, sheet_name=EXCEL_SHEET)[EXCEL_FIELDS]
    df = df.fillna(NULL_DEFAULT).drop_duplicates(subset=[EXCEL_KEY])  # 去重+补空值
    return df

def get_resume_count(level):
    """获取简历数量"""
    select_count = 3
    if level == "初级":
        select_count = 3
    elif level == "中级":
        select_count = 5
    elif level == "高级":
        select_count = 7
    elif level == "专家级":
        select_count = 9
    return select_count

def get_resume_list(row,raw_data):
    """获取简历列表"""
    select_count  = get_resume_count(row["级别"])
    random_data = random.sample(raw_data, select_count)
    for item in random_data:
        project_scale = random.randint(10, 40) #项目规模
        mgr_cnt = int(project_scale / 5) #管理团队人数
        item["项目规模"] = project_scale
        item["管理团队人数"] = mgr_cnt
    logger.info(f"随机选中{select_count}条数据：{random_data}")
    return random_data

def fill_word_template(template_path,excel_row,resume_data,save_path):
    """
    填充Word模板（核心：保样式）
    :param template_path: Word模板路径
    :param excel_row: Excel单行数据（字典）
    :param resume_data: 当前简历数据（字典）
    :param save_path: 生成文件保存路径
    """
    # 准备模板数据
    context = {
        "序号": excel_row["序号"],
        "工号": excel_row["工号"],
        "姓名": excel_row["姓名"],
        "身份证": excel_row["身份证"],
        "性别": excel_row["性别"],
        "年龄": excel_row["年龄"],
        "职位": excel_row["职位"],
        "级别": excel_row["级别"],
        "职称": excel_row["职称"],
        "毕业院校": excel_row["毕业院校"],
        "专业": excel_row["专业"],
        "学历": excel_row["学历"],
        "司龄": excel_row["司龄"],
        "担任现有职务年限": excel_row["担任现有职务年限"],
        "服务地点": excel_row["服务地点"],
        "random_data": resume_data
      }
    template = DocxTemplate(template_path)
    template.render(context)  # 将数据填充到模板
      # 保存文件
    template.save(save_path)

def get_josn_data(file_path):
    # 读取JSON数据
    try:
      with open(file_path, 'r', encoding='utf-8') as f:
            raw_data = json.load(f)
            if not isinstance(raw_data, list):
              raise ValueError("JSON数据必须是数组格式")
    except Exception as e:
        logger.error("读取JSON失败",e)
    return raw_data

def main():
    logger.info("......初始化目录......")
    init_dir(SAVE_DIR)

    logger.info("......获取excel数据......")
    df_excel = get_excel_data()

    logger.info("......获取项目信息......")
    raw_data = get_josn_data(JSON_PATH)
        
    logger.info("......生成简历......")
    for index, row in df_excel.iterrows():
        resume_data = get_resume_list(row, raw_data)
        writer = row["编写人"]
        save_path = os.path.join(SAVE_DIR, writer)
        if not os.path.exists(save_path):
           os.makedirs(save_path)

        FILE_NAME_RULE = "row['序号']-{row['级别']-{row['职位']-{row['姓名'].docx"  # 生成文件命名规则
        save_path= save_path+"/"+ FILE_NAME_RULE

        fill_word_template(WORD_TEMPLATE,row,resume_data,save_path)
        logger.info(f"已生成第{index+1}份简历")
        time.sleep(1)
        # clear_output()
    logger.info(f"全部文件生成完成！保存路径：{SAVE_DIR}")

# ====================== 3. 主流程（一键运行） ======================
if __name__ == "__main__":
    logger.info("开始执行")
    main()