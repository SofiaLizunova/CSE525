from src.db import get_engine
from src.config import BASE_DIR


def main():
    engine = get_engine()
    calculations_path = BASE_DIR / "sql" / "calculations.sql"

    with engine.begin() as conn:
        sql_text = calculations_path.read_text(encoding="utf-8")
        for statement in [s.strip() for s in sql_text.split(';') if s.strip()]:
            conn.exec_driver_sql(statement)

    print("Pipeline completed.")
    print("Update calculations.sql with your exact project logic.")


if __name__ == "__main__":
    main()
