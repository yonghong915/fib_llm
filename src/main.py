# -*- coding: utf-8 -*-
import  logging
import sys
import os

# 将项目根目录添加到sys.path中
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(project_root)

# 日志配置
logger = logging.getLogger(__name__)
FORMAT='%(asctime)s - %(funcName)s - %(levelname)s - %(message)s'
logging.basicConfig(filename=None,filemode='a',format=FORMAT, encoding='utf-8',level=logging.DEBUG)

def resume():
    from src import Resume
    CURR_PATH = os.path.dirname(os.path.abspath(__file__))
    print(f"当前路径: {CURR_PATH}")

    EXCEL_FILE = "toubiao.xlsx"       # Excel文件路径 
    WORD_TEMPLATE = "resume_template.docx"   # Word模板路径
    SAVE_DIR = "C:/Users/fangyh/Desktop/resumes/"   # 生成文件保存目录

    EXCEL_FILE = os.path.join(CURR_PATH, "../data/resume/"+ EXCEL_FILE)
    WORD_TEMPLATE = os.path.join(CURR_PATH, "../data/resume/"+WORD_TEMPLATE)
    try:
        resume = Resume(WORD_TEMPLATE,EXCEL_FILE,SAVE_DIR)
        resume.execute()
        logger.info(f"全部文件生成完成！保存路径：{SAVE_DIR}")
    except Exception as e:
        logger.error(f"生成文件失败！错误信息：{e}")
        raise e
    return 0

def tcm():
    from src import TCMmain
    CURR_PATH = os.path.dirname(os.path.abspath(__file__))
    print(f"当前路径: {CURR_PATH}")
    TCMmain()
def main():
    #resume()
    tcm()
    

if __name__ == '__main__':
    logger.info("we are studying python.")
    sys.exit(main())