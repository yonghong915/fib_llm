from .base_reader import BaseDataReader
from typing import Dict, List, Union, Any
import csv
import os
class CSVReader(BaseDataReader):
    """CSV文件读取器"""
   
    def read(self) -> List[Dict]:
        """读取CSV文件"""
        if not self._validate_file_format():
           raise ValueError("文件路径非CSV格式")
    
        data = []
        with open(self.file_path, "r",encoding="utf-8") as f:
            reader = csv.DictReader(f)
            for row in reader:
                data.append(dict(row))
        return data
    
    def get_metadata(self) -> dict[str,Any]:
        """获取 CSV 元信息"""
        with open(self.file_path, "r", encoding="utf-8") as f:
            reader = csv.reader(f)
            header = next(reader)  # 表头
            row_count = sum(1 for _ in reader)  # 数据行数
        
        return {
            "file_type": "CSV",
            "file_path": self.file_path,
            "file_size": os.path.getsize(self.file_path),
            "columns": header,
            "row_count": row_count
        }
    
    def _validate_file_format(self) -> bool:
        return self.file_path.endswith(".csv")
