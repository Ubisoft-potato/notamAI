# NOTAM AI

## Introduction

We have already seen success using the ChatGPT interface to the OpenAI model (3.5), for small batches of NOTAM messages
(Notices to Airmen) (5-10 at a time).
We want to replicate that and scale it using our own code, and API.
Primary Scope: We give the model a list of tags, some NOTAMs, and ask it to tag them.
Secondary: Ask for a 7-word summary.
Key point: We are only asking the LLM to tag the NOTAM, one tag only.
In English, the question we ask the AI model is "What is this NOTAM about?". That's all!

## Code Structure

The code is structured as follows:

- `notebooks/` contains the notebooks used to train the model and to test it.
    - this will include MySQL Setup, Data Preprocessing, LLM interacting code
- `persist/` contains the data model of NOTAM
- `data/` contains the data of NOTAM, and the SQL insert scripts
- `notam_llm.py` is the file to interact with LLM using our prompt
- `app.py` is the main file to run hole application, providing the web interface
- `api_server.py` is the file to run the api server, which is used to interact with LLM using our designed prompt

## Setup

### config env variables

The following variables are required to run the application, save it to `.env` file

```text
MYSQL_HOST=xxx
MYSQL_USER=xxx
MYSQL_PASSWORD=xxx
MYSQL_DATABASE=xxx

OPENAI_API_KEY=xxx
NOTAM_API_KEY=xxx
```

### Install dependencies

```bash
pip install -r requirements.txt
```

### Run the web application

Use the following command to run the application, and open the browser at `http://localhost:8080`

```bash
streamlit run app.py --server.port=8080
```

### Run the api server

Before run the api server, you need to install the following dependency `uvicorn`

```bash
pip install "uvicorn[standard]"
```

Use the following command to run the api server, and open the browser at `http://localhost:8081/docs` to see
the api docs

```bash

uvicorn api_server:app --host 0.0.0.0 --port 8081
```