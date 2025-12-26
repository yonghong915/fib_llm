import os
import sys
# 将项目根目录添加到sys.path中
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(project_root)

from src import DBUtil
config = {"database": "D:/software/database/sqlite/db/resume.db","datatype":"sqlite"}
dbutil = DBUtil(config)
data = dbutil.query("select * from project_data")
print(data)