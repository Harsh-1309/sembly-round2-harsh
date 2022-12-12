# TASK-2: ML challenge

### This task is solving a famous ML challenge hosted in Kaggle called “West Nile Virus Prediction”. 

Subparts of the task include:
- Cleaning
- Feature engineering
- Model selection and tuning    
- Data augmentation
- Productizing

The directory structure is as follows
```
├── task-2
│   ├── data
│   │   ├── 
│   ├── saved_models
│   │   ├── 
│   ├── Dockerfile
│   ├── EDA.ipynb
│   ├── feature_selection.ipynb
│   ├── ml_model.ipynb
│   └── tf_model.ipynb
│   ├── main.py
│   ├── model.py
│   ├── requirements.txt
```
- The  ` data/ ` directory has all the data: raw, cleaned, processed. 
- The `saved_models/` directory has all the saved trained models.
- `EDA.ipynb` contains all the EDA done.
- `feature_selection.ipynb` contains selection of features, feature engineering and data augmentation.
- `ml_model.ipynb` has all the ML models used and trained.
- `tf_model.ipynb` has all the DL models used and trained.
- `main.py` and `model.py` contains src for creating and serving as APIs.
- `Dockerfile` is used for dockerising the entire webapp.

Detailed desciption of the solution and comparison can be found in section "TASK-2" of [this](https://docs.google.com/document/d/1_pavK68JdQ_8SxT-OM6f4vxpP3ZbF-74v3E2NX0rdjA/edit?usp=sharing) document.

Docker image for the same can be found [here](https://hub.docker.com/repository/docker/harsh1309/wnv) or can be pulled using the command `docker pull harsh1309/wnv:latest`