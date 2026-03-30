from pathlib import Path
import pandas as pd
from src.db import get_engine
from src.config import EXCEL_PATH, BASE_DIR


def main():
    engine = get_engine()
    schema_path = BASE_DIR / "sql" / "schema.sql"

    with engine.begin() as conn:
        conn.exec_driver_sql(schema_path.read_text(encoding="utf-8"))

    excel_file = Path(EXCEL_PATH)
    if not excel_file.exists():
        print(f"Excel file not found: {excel_file}")
        print("Place a sample file in data/sample/ or set EXCEL_PATH in .env")
        return

    xls = pd.ExcelFile(excel_file)
    print("Available sheets:", xls.sheet_names)
    print("Update this script to map your actual sheets into SQL tables.")


if __name__ == "__main__":
    main()
