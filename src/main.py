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

from src import Resume
from src import YamlReader
def main(cfg):
    print("===== 鸢尾花分类器 AI 项目 =====")
    if not cfg:
        return -1
    
    print(cfg)
    ff = cfg[0]
    resume = Resume(ff["resume"]["word_template"],ff["resume"]["excel_file"])
    resume.execute()
    return 0

import argparse

if __name__ == '__main__':
    logger.info("we are studying python.")
    parser = argparse.ArgumentParser()
    CURR_PATH = os.path.dirname(os.path.abspath(__file__))
    print(f"当前路径: {CURR_PATH}")
    EXCEL_FILE = os.path.join(CURR_PATH, "../config/config.yaml")
    parser.add_argument("--config", "-c", help="Path to the configuration file",type=str,default=EXCEL_FILE)
    rtn = parser.parse_args()
    if rtn.config and os.path.exists(rtn.config):
        cfg = YamlReader(rtn.config)
    sys.exit(main(cfg.read()))