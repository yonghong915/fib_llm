from .base_reader import BaseDataReader
from typing import Dict, List, Union, Any
import os
import pandas as pd

class ExcelReader(BaseDataReader):
    """Excel 数据读取器（支持 .xlsx/.xls）"""
    def __init__(self, file_path: str, sheet_name: Union[str, int] = 0):
        """
        初始化 Excel 读取器
        :param file_path: 文件路径
        :param sheet_name: 工作表名/索引（默认第一个）
        """
        self.sheet_name = sheet_name
        super().__init__(file_path)  # 调用父类初始化（路径校验）
    
    def read(self) -> List[Dict]:
        """读取 Excel 为字典列表"""
        if not self._validate_file_format():
           raise ValueError("文件格式非Excel（.xlsx/.xls）")
        
        df = pd.read_excel(self.file_path, sheet_name=self.sheet_name)
        # 处理 NaN 为 None，保证数据一致性
        df = df.where(pd.notna(df), None)
        return df.to_dict("records")
    
    def get_metadata(self) -> Dict[str, Any]:
        """获取 Excel 元信息"""
        # 读取工作表信息
        xl_file = pd.ExcelFile(self.file_path)
        sheet_names = xl_file.sheet_names
        
        # 读取当前工作表详情
        df = pd.read_excel(self.file_path, sheet_name=self.sheet_name)
        return {
            "file_type": "Excel",
            "file_path": self.file_path,
            "file_size": os.path.getsize(self.file_path),
            "sheet_names": sheet_names,
            "current_sheet": self.sheet_name,
            "columns": list(df.columns),
            "row_count": len(df),
            "column_count": len(df.columns)
        }
    
    def _validate_file_format(self) -> bool:
        return self.file_path.endswith((".xlsx", ".xls"))
