import  os
import yaml
#数据库配置
DB_CONFIG={
    "host":"localhost",
    "port":3306
}
class BaseConfig:
    DEBUG = False
    DB_URI = "sqlite:///default.db"

class DevConfig(BaseConfig):
    DEBUG = True
    DB_URI = "sqlite:///dev.db"

class ProdConfig(BaseConfig):
    DEBUG = True
    DB_URI = os.getenv("PROD_DB_URI","")
    if not DB_URI:
        raise ValueError("PROD_DB_URI environment variable is required")

class YamlConfig(BaseConfig):
    def __init__(self,file_path:str) -> None:
        """
        初始化读取器
        :param file_path: 数据文件路径
        """
        self.file_path = file_path
        self.__validate_path() ## 初始化时校验路径
    def __validate_path(self) -> None:
        """通用路径校验（私有方法，可被子类复用/重写）"""
        import os
        if not os.path.exists(self.file_path):
            raise FileNotFoundError(f"文件不存在：{self.file_path}")
        
        if not isinstance(self.file_path, str):  # 确保file_path为字符串
            raise TypeError(f"file_path参数类型错误,必须为字符串类型：{self.file_path}")

    def read   
    DEBUG = True
    DB_URI = os.getenv("YAML_DB_URI","")
    if not DB_URI:
        raise ValueError("YAML_DB_URI environment variable is required")