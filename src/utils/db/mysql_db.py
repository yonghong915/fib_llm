import pymysql
from pymysql.cursors import DictCursor
from typing import Dict, Any, List
from .base_db import BaseDB
class MySQLDB(BaseDB):
    """MySQL数据库实现类"""
    
    def connect(self) -> None:
        """建立MySQL连接"""
        try:
            self.conn = pymysql.connect(
                host=self.config.get('host', 'localhost'),
                port=self.config.get('port', 3306),
                user=self.config.get('user'),
                password=self.config.get('password'),
                database=self.config.get('database'),
                charset=self.config.get('charset', 'utf8mb4'),
                cursorclass=DictCursor  # 直接返回字典格式
            )
            self.cursor = self.conn.cursor()
        except pymysql.MySQLError as e:
            raise Exception(f"MySQL连接失败: {e}")
    
    def close(self) -> None:
        """关闭MySQL连接"""
        if self.cursor:
            self.cursor.close()
        if self.conn:
            self.conn.close()
    
    def query(self, sql: str, params: tuple = None) -> List[Dict[str, Any]]:
        """执行MySQL查询并返回字典列表"""
        if not self.conn or not self.cursor:
            raise Exception("未建立数据库连接，请先调用connect()")
        
        try:
            self.cursor.execute(sql, params or ())
            return self.cursor.fetchall()
        except pymysql.MySQLError as e:
            raise Exception(f"MySQL查询失败: {e}")