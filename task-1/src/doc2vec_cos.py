from sklearn.metrics.pairwise import cosine_similarity
from gensim.models.doc2vec import Doc2Vec

model= Doc2Vec.load("../data/doc2vec/d2v.model")

def get_d2v_cos_sim(text1,text2):
    q1_vector=model.infer_vector([text1])
    q2_vector=model.infer_vector([text2])

    cosine_sim=float(cosine_similarity([q1_vector], [q2_vector]))
    if cosine_sim >= 0.5:
        return 1
    else:
        return 0
