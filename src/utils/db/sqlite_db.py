import sqlite3
from .base_db import BaseDB
from typing import List, Dict, Any
class SQLiteDB(BaseDB):
    """SQLite数据库实现类"""
    def connect(self) -> None:
        """建立SQLite连接"""
        try:
            # SQLite的config核心是database（文件路径）
            db_path = self.config.get('database', ':memory:')  # 默认内存数据库
            self.conn = sqlite3.connect(db_path)
            self.cursor = self.conn.cursor()
        except sqlite3.Error as e:
            raise Exception(f"SQLite连接失败: {e}")
    
    def close(self) -> None:
        """关闭SQLite连接"""
        if self.cursor:
            self.cursor.close()
        if self.conn:
            self.conn.close()
    
    def execute(self, sql: str, params: tuple = None) -> None:
        """执行SQL语句并返回结果"""
        try:
            if params:
                self.cursor.execute(sql, params)
            else:
                self.cursor.execute(sql)
            self.conn.commit()
        except Exception as e:
            self.conn.rollback()
            raise Exception(f"SQLite执行失败: {e}")

    def query(self, sql: str, params: tuple = None) -> List[Dict[str, Any]]:
        """执行SQLite查询并返回字典列表"""
        if not self.conn or not self.cursor:
            raise Exception("未建立数据库连接，请先调用connect()")
        
        try:
            self.cursor.execute(sql, params or ())
            # 获取字段名
            column_names = [desc[0] for desc in self.cursor.description]
            # 转换为字典列表
            result = []
            for row in self.cursor.fetchall():
                result.append(dict(zip(column_names, row)))
            return result
        except sqlite3.Error as e:
            raise Exception(f"SQLite查询失败: {e}")