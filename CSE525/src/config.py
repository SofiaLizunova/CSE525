from pathlib import Path
import os

BASE_DIR = Path(__file__).resolve().parents[1]
DB_PATH = os.getenv("DB_PATH", str(BASE_DIR / "data" / "tmy_str.db"))
EXCEL_PATH = os.getenv("EXCEL_PATH", str(BASE_DIR / "data" / "sample" / "merged_file_sample.xlsx"))
