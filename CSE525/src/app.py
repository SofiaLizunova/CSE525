from src.db import get_engine


def main():
    engine = get_engine()
    print("CSE525 TMY-STR prototype")
    print("Database connection initialized.")
    print("Replace this script with your dashboard or analysis entry point.")
    print(engine)


if __name__ == "__main__":
    main()
