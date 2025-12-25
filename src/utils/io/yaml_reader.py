from .base_reader import BaseDataReader
from typing import Dict, List, Union, Any
import yaml
import os
class YamlReader(BaseDataReader):
    """YAML文件读取器"""
    def read(self) -> List[Dict]:
        """读取JSOn文件"""
        if not self._validate_file_format():
           raise ValueError("文件路径非YAML格式")
        
        with open(self.file_path, "r",encoding="utf-8") as f:
            data = yaml.safe_load(f)
        # 统一返回列表格式（兼容单字典/列表）
        if isinstance(data, dict):
            return [data]
        elif isinstance(data, list):
            return data
        else:
            raise ValueError("YAML数据必须是列表或字典格式")
    
    def get_metadata(self) -> dict[str,Any]:
        """获取YAML元信息"""
        data = self.read()
        return {
            "type": "yaml",
            "path": self.file_path,
            "size": os.path.getsize(self.file_path),
            "element_count": len(data),
            "sample_keys": list(data[0].keys()) if data else []
        }
    
    def _validate_file_format(self) -> bool:
        return self.file_path.endswith((".yaml", ".yml"))