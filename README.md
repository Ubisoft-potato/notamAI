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
