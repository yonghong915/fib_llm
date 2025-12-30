#根包公共接口（聚合所有子包核心成员）
__all__ = [
    #IO模块
    "CSVReader", "JSONReader", "ExcelReader","YamlReader",
    
     # DB模块
    "SQLiteDB",

    # 模型模块
    "DBUtil",

    # 业务模块
    "Resume",

    # TCM模块
    "TCMmain"
]

from .utils import CSVReader,JSONReader,ExcelReader,YamlReader
from .resume import Resume
from .utils import DBUtil
from .tcm import TCMmain

__version__ = "1.0.0"
__author__ = "fangyh"
__description__ = "数据处理工具包：支持CSV/JSON/Excel读取、清洗、特征工程"