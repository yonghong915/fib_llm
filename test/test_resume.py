import os
import sys
# 将项目根目录添加到sys.path中
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(project_root)

from src import JSONReader,doResume

json_reader = JSONReader("E:/workspace/ws_python/fib_llm/data/resume/pro_data.json")
json_data = json_reader.read()
json_meta = json_reader.get_metadata()
print("\n=== JSON 元信息 ===")
print(f"元素类型: {json_meta['element_type']}, 元素数量: {json_meta.get('element_count', 'N/A')}")
print(f"数据: {json_data[:2] if isinstance(json_data, list) else json_data}")
doResume()