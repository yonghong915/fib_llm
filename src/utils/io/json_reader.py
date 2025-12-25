from .base_reader import BaseDataReader
from typing import Dict, List, Union, Any
import json
import os
class JSONReader(BaseDataReader):
    """JSON文件读取器"""
    def read(self) -> List[Dict]:
        """读取JSOn文件"""
        if not self._validate_file_format():
           raise ValueError("文件路径非JSON格式")
        
        with open(self.file_path, "r",encoding="utf-8") as f:
            data = json.load(f)
        return data
    
    def get_metadata(self) -> dict[str,Any]:
        """获取 JSON 元信息"""
        data = self.read()
        meta = {
            "file_type": "JSON",
            "file_path": self.file_path,
            "file_size": os.path.getsize(self.file_path),
        }
        
        # 区分 JSON 数组/对象
        if isinstance(data, list):
            meta["element_count"] = len(data)
            meta["element_type"] = "list"
            if data:
                meta["sample_keys"] = list(data[0].keys()) if isinstance(data[0], dict) else type(data[0]).__name__
        else:
            meta["element_type"] = "dict"
            meta["key_count"] = len(data.keys())
            meta["keys"] = list(data.keys())
        return meta
    
    def _validate_file_format(self) -> bool:
        return self.file_path.endswith(".json")