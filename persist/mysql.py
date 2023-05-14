import logging
import os

from sqlalchemy import create_engine
from sqlalchemy.orm import DeclarativeBase
from sshtunnel import SSHTunnelForwarder


class Base(DeclarativeBase):
    pass


def create_ssh_tunnel_for_local(mysql_host, ssh_host: str):
    """
    MySQL Server is not accessible from outside the cluster.
    Create ssh tunnel for local development, that forwards mysql port to local
    :param mysql_host:
    :param ssh_host:
    :return:
    """
    return SSHTunnelForwarder(
        ssh_address_or_host=ssh_host,
        remote_bind_address=(mysql_host, 3306),
    )


def create_mysql_engine(host: str, user: str, password: str, database: str, echo: bool = True):
    return create_engine(f'mysql+pymysql://{user}:{password}@{host}/{database}',
                         echo=echo, pool_recycle=60 * 5, pool_pre_ping=True)


class MySQLEngine:
    def __init__(self, echo: bool = True):
        mysql_host = os.getenv('MYSQL_HOST')
        if os.getenv('IS_DEV') == "1":
            server = create_ssh_tunnel_for_local('127.0.0.1', os.getenv('SSH_HOST'))
            server.start()
            mysql_host = f'127.0.0.1:{server.local_bind_port}'
            logging.info(f"ssh tunnel started at {mysql_host}")
        self.engine = create_mysql_engine(mysql_host,
                                          os.getenv('MYSQL_USER'),
                                          os.getenv('MYSQL_PASSWORD'),
                                          os.getenv('MYSQL_DATABASE'),
                                          echo)
        Base.metadata.create_all(self.engine)

    def get_engine(self):
        return self.engine

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.engine.dispose()
