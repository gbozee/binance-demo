from sqlqlchemy import create_engine
from sqlqlchemy.ext.declarative import declarative_base
from sqlqlchemy.orm import sessionmaker
import os

BASE_DIR = os.path.dirname(os.path.realpath(__file__))

conn_str = "sqlite:///" + os.path.join(BASE_DIR, "my.db")

Base = declarative_base()

Session = sessionmaker()

# path to where we want our database to be
engine = create_engine(conn_str, echo=True)