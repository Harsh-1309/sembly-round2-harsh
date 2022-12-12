# TASK-2: ML challenge

### This task is solving a famous ML challenge hosted in Kaggle called “West Nile Virus Prediction”. 

Subparts of the task include:
- Cleaning
- Feature engineering
- Model selection and tuning    
- Data augmentation
- Productizing

The directory structure is as follows:
```
├── task-1
│   ├── data
│   │   ├── doc2vec
│   │   ├── tfidf
│   ├── dl
│   ├── doc2vec
│   ├── tfidf
│   ├── saved_models
│   │   ├── doc2vec
│   │   ├── sbert_mpnet
│   │   ├── tfidf
│   │   └── tf_model
│   ├── Dockerfile
│   ├── src
│   ├── main.py
│   ├── preprocessing.ipynb
│   ├── README.md
│   └── requirements.txt


```
- The  ` data/ ` directory has all the data: raw, cleaned, processed. `data/doc2vec/` has trained doc2vec model and `data/tfidf/` has pickled tfidf vectors and transformer/vectorizer. (Later 2 not on GitHub due to size restrictions, but are present in the Docker image.) 
- The `saved_models/` directory has all the saved trained models. (Not on GitHub due to size restrictions, but are present in the Docker image.) 
- `doc2vec/` contains all notebooks for training and inference of doc2vec models.
- `tfidf/` contains all notebooks for training and inference of tfidf models.
- `dl/` contains all notebooks for training and inference of deep learning models.
- `preprocessing.ipynb` contains notebook for entire cleaning and preprocessing of data.
- `main.py` and `src/` contains src for creating and serving as APIs.
- `Dockerfile` is used for dockerising the entire webapp.



Detailed desciption of the solution and comparison can be found in section "TASK-2" of [this](https://docs.google.com/document/d/1_pavK68JdQ_8SxT-OM6f4vxpP3ZbF-74v3E2NX0rdjA/edit?usp=sharing) document.

Docker image for the same can be found [here](https://hub.docker.com/repository/docker/harsh1309/wnv) or can be pulled using the command `docker pull harsh1309/wnv:latest`