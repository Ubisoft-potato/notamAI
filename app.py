import pandas as pd
import streamlit as st
from dotenv import load_dotenv
from langchain.callbacks import get_openai_callback
from sqlalchemy.engine import Engine
from sqlalchemy.orm import Session

from notam_llm import NOTAMLLMChat
from persist.mysql import *
from persist.notam import *


def get_list_of_tags(e: Engine) -> str:
    tags_content = ""
    with Session(e) as session:
        tags = session.query(NOTAMTag).all()
    for tag in tags:
        tags_content += f"{tag.level} *{tag.tag}* {tag.description}\n"
    return tags_content


def get_notam_messages(e: Engine, notam_ids: [str]) -> str:
    notam_messages_to_ask = ""
    with Session(e) as session:
        notams = session.query(NOTAM).where(NOTAM.notam_id.in_(notam_ids)).all()
    for notam in notams:
        notam_messages_to_ask += f"{notam.location} {notam.notam_id} {notam.message}\n"
    return notam_messages_to_ask


def get_notams_dataframe(e: Engine):
    with Session(e) as session:
        notams = session.query(NOTAM).all()
    notam_data = {
        "notam_id": [],
        "location": [],
        "message": []
    }
    for notam in notams:
        notam_data["notam_id"].append(notam.notam_id)
        notam_data["location"].append(notam.location)
        notam_data["message"].append(notam.message)
    return pd.DataFrame(notam_data)


def show_notams_table(notam_data: pd.DataFrame):
    with st.expander("NOTAM messages (20 in total for demo purpose)", expanded=True):
        st.dataframe(notam_data)


if __name__ == '__main__':
    load_dotenv()
    engine = MySQLEngine(echo=False)
    notam_llm_chat = NOTAMLLMChat()
    st.set_page_config(
        page_title="NOTAM AI️ Demo",
        page_icon="🤖️",
    )
    st.title("🤖️ NOTAM AI️ Demo")
    notam_dataframe = get_notams_dataframe(engine.get_engine())
    notam_tags = get_list_of_tags(engine.get_engine())
    show_notams_table(notam_dataframe)
    with st.container():
        with st.form("notams_form"):
            options = st.multiselect(
                'Please choose the NOTAM you want to send to AI',
                notam_dataframe,
                max_selections=5)
            submitted = st.form_submit_button("Submit")
        if submitted:
            if len(options) == 0:
                st.error('Please Choose at least one notam message', icon="🚨")
            else:
                with st.spinner('🤔 ️Waiting for AI...'):
                    notam_messages = get_notam_messages(engine.get_engine(), options)
                    with get_openai_callback() as cb:
                        notam_table = notam_llm_chat.chat_to_get_notam_about(notam_tags, notam_messages)
                    # cb.total_cost
                st.markdown(f"Cost: **:blue[{cb.total_cost}]** USD")
                st.divider()
                st.markdown("🤖️ AI's response:")
                st.markdown(notam_table)
