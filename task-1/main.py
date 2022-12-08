import time
import numpy as np
import uvicorn
from pydantic import BaseModel 
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import PlainTextResponse
from preprocessing import preprocess


app = FastAPI(
    title="Question Pair Similarity",
    description="Tell whether two questions are of same meaning or not.")  

origins=["*"]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class data(BaseModel):
    question1: str
    question2: str


@app.get('/')
def index():
    message = "Question Similarity Predictor is live."
    return message

if __name__ == '__main__': 
    uvicorn.run("main:app", host='127.0.0.1', port=8000, reload=True)


