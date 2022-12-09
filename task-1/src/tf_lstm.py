import joblib
import numpy as np
from nltk.tokenize import word_tokenize
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing.sequence import pad_sequences

model=load_model("saved_models/tf_model/lstm")
word_tokenizer = joblib.load('saved_models/tf_model/keras_custom_tokenizer')
max_length=247

def padding_doc(encoded_doc, max_length):
    return pad_sequences(encoded_doc, maxlen=max_length, padding="post")

def prepare_text(text):
    
    text=word_tokenize(text)

    if len(text) <= max_length:
        text = text
    else:
        text = text[0:max_length]

    text=word_tokenizer.texts_to_sequences(text)
    if [] in text:
        text = list(filter(None, text))

    text = np.array(text).reshape(1, len(text))
    ready_text = padding_doc(text, max_length)

    return ready_text

def get_lstm_pred(text1,text2):
    text1 = prepare_text(text1)
    text2 = prepare_text(text2)

    x=np.hstack((text1,text2))
    pred=np.round(model.predict([x]))

    return int(pred)