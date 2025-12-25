from abc import ABC, abstractmethod
from typing import List,Dict,Union,Any
class BaseDataReader(ABC):
    """数据读取抽象接口类"""
    def __init__(self,file_path:str) -> None:
        """
        初始化读取器
        :param file_path: 数据文件路径
        """
        self.file_path = file_path
        self.__validate_path() ## 初始化时校验路径
    
    @abstractmethod
    def read(self) -> Union[List[Dict],Dict]:
        """
        核心读取方法（子类必须实现）
        :return: 结构化数据（列表/字典）
        """
        pass

    def __validate_path(self) -> None:
        """通用路径校验（私有方法，可被子类复用/重写）"""
        import os
        if not os.path.exists(self.file_path):
            raise FileNotFoundError(f"文件不存在：{self.file_path}")
        
        if not isinstance(self.file_path, str):  # 确保file_path为字符串
            raise TypeError(f"file_path参数类型错误,必须为字符串类型：{self.file_path}")
    
    @abstractmethod
    def _validate_file_format(self) -> bool:
        """验证文件格式"""
        raise NotImplementedError("子类必须实现此方法")

    @abstractmethod
    def get_metadata(self) -> dict[str,Any]:
        """
        获取文件元信息（如行数、列数、字段名）
        :return: 元信息字典
        """
        pass

