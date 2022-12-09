from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity

model=SentenceTransformer("../saved_models/sbert_mpnet")

def get_sbert_cos_sim(text1,text2):
    q1_vector=model.encode([text1])
    q2_vector=model.encode([text2])

    cosine_sim=float(cosine_similarity(q1_vector, q2_vector))
    if cosine_sim >= 0.5:
        return 1
    else:
        return 0
