from datetime import datetime

from sqlalchemy import TIMESTAMP, func, String
from sqlalchemy.orm import mapped_column, Mapped

from persist.mysql import Base


class NOTAM(Base):
    __tablename__ = "hunt"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, comment="id of hunt")
    notam_id: Mapped[str] = mapped_column(String(255), comment="NOTAM id", default="")
    message: Mapped[str] = mapped_column(String(2048), comment="NOTAM message", default="")
    location: Mapped[str] = mapped_column(String(1024), comment="NOTAM location", default="")

    tag: Mapped[str] = mapped_column(String(255), comment="NOTAM tag recognized by LLM", default="")
    summary: Mapped[str] = mapped_column(String(255), comment="NOTAM summary by LLM", default="")

    create_time: Mapped[datetime] = mapped_column(TIMESTAMP, comment="create time", server_default=func.now())
    update_time: Mapped[datetime] = mapped_column(TIMESTAMP, comment="update time", server_default=func.now(),
                                                  onupdate=func.now())
