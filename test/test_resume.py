import os
import sys
import pandas as pd
from docx import Document
from docxtpl import DocxTemplate
import random
# 将项目根目录添加到sys.path中
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(project_root)
import logging
logger = logging.getLogger(__name__)
FORMAT='%(asctime)s - %(funcName)s - %(levelname)s - %(message)s'
logging.basicConfig(filename=None,filemode='a',format=FORMAT, encoding='utf-8',level=logging.INFO)


WORD_TEMPLATE = "C:/Users/fangyh/Desktop/test/template.docx"   # Word模板路径
SAVE_DIR = "C:/Users/fangyh/Desktop/resumes/"   # 生成文件保存目录
NULL_DEFAULT = "无"               # 空值默认填充内容
CURR_PATH = os.path.dirname(os.path.abspath(__file__))

from src import DBUtil

class Resume:
    """
    Resume类，生成简历
    """
    def __init__(self, template_path: str,save_path:str):
        self.template_path = template_path
        self.save_path = save_path

    def fill_word_template(self,template_path,save_path):
        """
        填充Word模板（核心：保样式）
        :param template_path: Word模板路径
        :param excel_row: Excel单行数据（字典）
        :param resume_data: 当前简历数据（字典）
        :param save_path: 生成文件保存路径
        """
        # 准备模板数据
        config = {"database": "D:/software/database/sqlite/db/resume.db","datatype":"sqlite"}
        dbutil = DBUtil(config)
        raw_data = dbutil.query("select * from project_data where proj_intro <> '项目介绍'")
        proj_data=[]
        random_data = random.sample(raw_data, 3)
        for item in random_data:
            prj_row_dict = {}
            print(f"项目名称：{item['proj_nm']}")
            print(f"项目描述：{item['proj_intro']}")
            print(f"项目职责：")
            proj_task = item['proj_task']
            proj_task = proj_task.replace("\n","")
            proj_tasks = proj_task.split(";")
            prj_tasks = []
            for idx,task in enumerate(proj_tasks):
                if not task: continue
                task.strip()
                if idx == len(proj_tasks) - 1:
                    prj_tasks.append(f"     {idx+1}、{task}。\n")
                elif idx == 0:
                    prj_tasks.append(f"{idx+1}、{task}；\n")
                else:
                    prj_tasks.append(f"     {idx+1}、{task}；\n")
            prj_row_dict["proj_nm"] = item['proj_nm']
            prj_row_dict["proj_desc"] = item['proj_intro']

            print(f"prj_tasks:{"".join(prj_tasks)}")
            prj_row_dict["proj_task"] = "".join(prj_tasks)
            proj_data.append(prj_row_dict)
        
        com_data = []
       
        row_dict = {}
        row_dict["com_nm"]= "北京前海汇信息科技有限公司"
        row_dict["zhize"]= "高级开发工程师"
        row_dict["proj_data"] = proj_data
        com_data.append(row_dict)

        row_dict1 = {}
        proj_data1 = []
        random_data1 = random.sample(raw_data, 2)
        for item in random_data1:
            prj_row_dict = {}
            print(f"项目名称：{item['proj_nm']}")
            print(f"项目描述：{item['proj_intro']}")
            print(f"项目职责：")
            proj_task = item['proj_task']
            proj_task = proj_task.replace("\n","")
            proj_tasks = proj_task.split(";")
            prj_tasks = []
            for idx,task in enumerate(proj_tasks):
                if not task: continue
                task.strip()
                if idx == len(proj_tasks) - 1:
                    prj_tasks.append(f"     {idx+1}、{task}。\n")
                elif idx == 0:
                    prj_tasks.append(f"{idx+1}、{task}；\n")
                else:
                    prj_tasks.append(f"     {idx+1}、{task}；\n")
            prj_row_dict["proj_nm"] = item['proj_nm']
            prj_row_dict["proj_desc"] = item['proj_intro']

            print(f"prj_tasks:{"".join(prj_tasks)}")
            prj_row_dict["proj_task"] = "".join(prj_tasks)
            proj_data1.append(prj_row_dict)
        
        row_dict1["com_nm"]= "深圳市智软软件开发有限公司"
        row_dict1["zhize"]= "开发工程师"
        row_dict1["proj_data"] = proj_data1
        com_data.append(row_dict1)

        print(com_data)
        context = {
            "com_data": com_data
        }
        template = DocxTemplate(template_path)
        template.render(context)  # 将数据填充到模板
        # 保存文件
        template.save(save_path)
    def execute(self) -> str:
        """
        执行
        :param json_data: JSON数据
        :return: 响应内容
        """
        logger.info("......初始化目录......")
        init_dir(self.save_path)


        logger.info("......获取项目信息......")
        raw_data = self.get_proj_data()
        
        logger.info("......生成简历......")
        FILE_NAME_RULE = "test.docx"
        save_path= self.save_path+"/"+ FILE_NAME_RULE

        self.fill_word_template(WORD_TEMPLATE,save_path)
        
    
    def get_proj_data(self):
        """从数据库中获取项目数据"""
        config = {"database": "D:/software/database/sqlite/db/resume.db","datatype":"sqlite"}
        dbutil = DBUtil(config)
        qry_sql = "select * from project_data"
        results = dbutil.query(qry_sql)
        datalist = []
        for row in results:
            row_dict = {}
            row_dict["项目名称"]= row["proj_nm"]
            row_dict["项目实施用户"]= row["proj_cust"]
            datalist.append(row_dict)
        return datalist


    def __get_resume_count(self,level):
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

# ====================== 2. 工具函数（通用，无需修改） ======================
def init_dir(dir_path):
    """初始化保存目录，不存在则创建"""
    if not os.path.exists(dir_path):
        os.makedirs(dir_path)
def main():
    init_dir(SAVE_DIR)
    resume = Resume(WORD_TEMPLATE,SAVE_DIR)
    resume.execute()
    logger.info(f"全部文件生成完成！保存路径：{SAVE_DIR}")

# ====================== 3. 主流程（一键运行） ======================
if __name__ == "__main__":
    logger.info("开始执行")
    main()