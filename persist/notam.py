from datetime import datetime

from sqlalchemy import TIMESTAMP, func, String
from sqlalchemy.orm import mapped_column, Mapped

from persist.mysql import Base


class NOTAM(Base):
    __tablename__ = "notam"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, comment="id of hunt")
    notam_id: Mapped[str] = mapped_column(String(255), comment="NOTAM id", default="")
    message: Mapped[str] = mapped_column(String(2048), comment="NOTAM message", default="")
    location: Mapped[str] = mapped_column(String(1024), comment="NOTAM location", default="")

    tag: Mapped[str] = mapped_column(String(255), comment="NOTAM tag recognized by LLM", default="")
    summary: Mapped[str] = mapped_column(String(255), comment="NOTAM summary by LLM", default="")

    create_time: Mapped[datetime] = mapped_column(TIMESTAMP, comment="create time", server_default=func.now())
    update_time: Mapped[datetime] = mapped_column(TIMESTAMP, comment="update time", server_default=func.now(),
                                                  onupdate=func.now())

    def __repr__(self) -> str:
        return f"<NOTAM(id={self.id}, notam_id={self.notam_id}, message={self.message}, location={self.location}, " \
               f"tag={self.tag}, summary={self.summary}, create_time={self.create_time}, " \
               f"update_time={self.update_time})>"


class NOTAMTag(Base):
    __tablename__ = "notam_tag"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, comment="id of hunt")

    level: Mapped[str] = mapped_column(String(255), comment="NOTAM tag level", default="")
    tag: Mapped[str] = mapped_column(String(255), comment="NOTAM tag name", default="")
    description: Mapped[str] = mapped_column(String(255), comment="NOTAM tag description", default="")
    class_name: Mapped[str] = mapped_column(String(255), comment="NOTAM tag class name", default="")

    def __repr__(self) -> str:
        return f"<NOTAMTag(id={self.id}, level={self.level}, tag={self.tag}, description={self.description}, " \
               f"class_name={self.class_name})>"
