from tensorflow.keras.models import load_model
import numpy as np

model_path="saved_models/ANN_aug"
loaded_model = load_model(model_path)

def make_wnv_prediction(data):
    return np.round(loaded_model.predict(data))

# [[2,41,32,1,41.95469,-87.800991,9,1,88,65,59,66,0.0,30.09,5.8,16,7.4,2007,5,29]]