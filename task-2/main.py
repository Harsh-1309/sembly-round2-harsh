import time
import numpy as np
import uvicorn
from pydantic import BaseModel 
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import PlainTextResponse
from model import make_wnv_prediction

app = FastAPI(
    title="West Nile Virus Predictor",
    description="Predict presence of West Nile Virus based on certain parameters like location, weather data etc.")  

origins=["*"]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class data(BaseModel):
    user_input: list

@app.get('/')
def index():
    message = "West Nile Virus Predictor is live."
    return message

@app.post('/wnv',description="Enter the required parameters to predict presence of virus")
def predictor(data:data):
    res_time=time.time()
    data=data.dict()
    
    user_params = np.array(data['user_input'])
    if user_params.shape != (1, 20):
        raise ValueError(user_params.shape)
    else:
        predicted_value=make_wnv_prediction(user_params)
        if int(predicted_value[0])==0:
            prediction = "Virus Absent"
        else:
            prediction = "Virus Present"

    return {
        'virus status' : prediction,
        'response time' : time.time()-res_time
    }    

@app.exception_handler(Exception)
async def validation_exception_handler(request,exc):
    if ValueError:
        return PlainTextResponse(f"Check input data. Shape should be (1,20)", status_code=400)
    else:   
        return PlainTextResponse("Something went wrong",status_code=400)

if __name__ == '__main__': 
    uvicorn.run("main:app", host='127.0.0.1', port=8000, reload=True)


