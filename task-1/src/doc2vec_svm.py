import joblib
# from sklearn.metrics.pairwise import cosine_similarity
from gensim.models.doc2vec import Doc2Vec
import numpy as np

doc2vec_model= Doc2Vec.load("data/doc2vec/d2v.model")
svm_model= joblib.load("saved_models/doc2vec/svm_model.sav")

def get_svm_pred(text1,text2):
    q1_vector=doc2vec_model.infer_vector([text1])
    q2_vector=doc2vec_model.infer_vector([text2])

    x=np.hstack((q1_vector,q2_vector))
    pred=svm_model.predict([x])
    return pred
