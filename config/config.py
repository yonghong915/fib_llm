#数据库配置
DB_CONFIG={
    "host":"localhost",
    "port":3306
}

import  os
from .config import base

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