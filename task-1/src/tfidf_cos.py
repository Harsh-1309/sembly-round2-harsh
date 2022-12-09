import pickle
from sklearn.metrics.pairwise import cosine_similarity

transformer=pickle.load(open("../data/tfidf/tfidf_transformer.pkl", "rb"))

def get_tfidf_cos_sim(text1,text2):
    q1_vector=transformer.transform([text1])
    q2_vector=transformer.transform([text2])

    cosine_sim=float(cosine_similarity(q1_vector, q2_vector))
    if cosine_sim >= 0.5:
        return 1
    else:
        return 0

