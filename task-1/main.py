import time
import numpy as np
import uvicorn
from pydantic import BaseModel 
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import PlainTextResponse
from src.preprocessing import preprocess
from src.tf_lstm import get_lstm_pred
from src.sbert_mpnet import get_sbert_cos_sim

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

@app.post('/question-pairs',
description="Enter the 2 questions to check similarity. Enter {1: doc2vec cosine, 2: doc2vec svm, 3: tfidf cosine, 4: lstm, 5: sbert mpnet")
def predictor(data:data,model_selection,):
    res_time=time.time()
    data=data.dict()
    selected_model=int(model_selection)
    
    text1=preprocess(data["question1"])
    text2=preprocess(data["question2"])

    if selected_model == 1:
        from src.doc2vec_cos import get_d2v_cos_sim
        prediction=get_d2v_cos_sim(text1,text2)
        model_in_use = "Doc2Vec with Cosine Similarity"

    elif selected_model == 2:
        from src.doc2vec_svm import get_svm_pred
        prediction=get_svm_pred(text1,text2)
        model_in_use = "Doc2Vec combined with SVM"

    elif selected_model == 3:
        from src.tfidf_cos import get_tfidf_cos_sim
        prediction=get_tfidf_cos_sim(text1,text2)
        model_in_use = "TF-IDF with Cosine Similarity"

    elif selected_model == 4:
        # from src.tf_lstm import get_lstm_pred
        prediction=get_lstm_pred(text1,text2)
        model_in_use = "LSTM"

    elif selected_model == 5:
        # from src.sbert_mpnet import get_sbert_cos_sim
        prediction=get_sbert_cos_sim(text1,text2)
        model_in_use= "S-BERT with Cosine Similarity"

    else:
        raise ValueError

    prediction = "Questions are similar" if prediction == 1 else "Questions are not similar"
    return {
        'similarity status' : prediction,
        'model used' : model_in_use,
        'response time' : time.time()-res_time
    }    

@app.exception_handler(Exception)
async def validation_exception_handler(request,exc):
    if ValueError:
        return PlainTextResponse("Enter a valid model, details in the description.", status_code=400)
    else:
        return PlainTextResponse("Something went wrong",status_code=400)

if __name__ == '__main__': 
    uvicorn.run("main:app", host='127.0.0.1', port=8000, reload=True)


