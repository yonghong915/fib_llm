from . import SQLiteDB
from . import MySQLDB
from typing import Dict, Any,List

class DBUtil:
    def __init__(self, config: Dict[str, Any]):
        """
        初始化
        :param config: 数据库连接配置字典
        """
        self.config = config
        datatype = self.config.get("datatype")
        self.datatype = datatype

        if datatype == "sqlite":
           self.db = SQLiteDB(config)
        elif datatype == "mysql":
           self.db = MySQLDB(config)

        self.conn = None  # 数据库连接对象
        self.cursor = None  # 游标对象
    def connect(self):
        self.db.connect()

    def query(self,sql: str, params: tuple = None) -> List[Dict[str, Any]]:
        if not self.conn or not self.cursor:
            self.connect()
        try:
           return self.db.query(sql,params)
        except Exception as e:
           print(e)
        finally:
            self.db.close()
    
    def execute(self,sql: str, params: tuple = None) -> List[Dict[str, Any]]:
        if not self.conn or not self.cursor:
            self.connect()
        try:
           return self.db.execute(sql,params)
        except Exception as e:
           print(e)
        finally:
            self.db.close()