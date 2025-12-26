from abc import ABC, abstractmethod
from typing import List, Dict, Any

class BaseDB(ABC):
    """数据库操作抽象基类，定义公共接口和通用方法"""
    
    def __init__(self, config: Dict[str, Any]):
        """
        初始化
        :param config: 数据库连接配置字典
        """
        self.config = config
        self.conn = None  # 数据库连接对象
        self.cursor = None  # 游标对象
    
    @abstractmethod
    def connect(self) -> None:
        """建立数据库连接（抽象方法，子类必须实现）"""
        pass
    
    @abstractmethod
    def close(self) -> None:
        """关闭数据库连接（抽象方法，子类必须实现）"""
        pass
    
    @abstractmethod
    def query(self, sql: str, params: tuple = None) -> List[Dict[str, Any]]:
        """
        执行查询并返回字典列表（抽象方法，子类必须实现）
        :param sql: 查询SQL语句
        :param params: SQL参数（元组）
        :return: 字典列表
        """
        pass

    @abstractmethod
    def execute(self, sql: str, params: tuple = None) -> List[Dict[str, Any]]:
        """
        执行查询并返回字典列表（抽象方法，子类必须实现）
        :param sql: 查询SQL语句
        :param params: SQL参数（元组）
        :return: 字典列表
        """
        pass
    
    def rename_query_keys(self, sql: str, params: tuple = None, key_mapping: Dict[str, str] = None) -> List[Dict[str, Any]]:
        """
        通用方法：执行查询并修改返回结果的key名称
        :param sql: 查询SQL语句
        :param params: SQL参数
        :param key_mapping: key映射字典 {'旧key': '新key'}
        :return: 修改key后的字典列表
        """
        # 执行基础查询
        result_list = self.query(sql, params)
        
        # 没有映射规则则直接返回原结果
        if not key_mapping:
            return result_list
        
        # 批量修改key
        new_result = []
        for item in result_list:
            new_item = {}
            for old_key, value in item.items():
                new_key = key_mapping.get(old_key, old_key)
                new_item[new_key] = value
            new_result.append(new_item)
        return new_result
    
    def __enter__(self):
        """上下文管理器：进入时自动连接"""
        self.connect()
        return self
    
    def __exit__(self, exc_type, exc_val, exc_tb):
        """上下文管理器：退出时自动关闭连接"""
        self.close()
        # 处理异常（如果有）
        if exc_type:
            print(f"数据库操作异常: {exc_val}")
        return False  # 不抑制异常，让上层处理