from sqlalchemy import create_engine
from src.config import DB_PATH


def get_engine():
    return create_engine(f"sqlite:///{DB_PATH}")
