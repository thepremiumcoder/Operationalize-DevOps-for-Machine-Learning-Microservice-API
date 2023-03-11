
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/thepremiumcoder/Operationalize-DevOps-for-Machine-Learning-Microservice-API/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/thepremiumcoder/Operationalize-DevOps-for-Machine-Learning-Microservice-API/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


---
### Short description of folders and files in the repo

* [.circleci](./.circleci): Directory for the CircleCI build server
* [model_data](./model_data) : Directory for the pretrained `sklearn` model and housing csv files
* [output_txt_files](./output_txt_files): Directory for the output logs from running `./run_docker.sh` and `./run_kubernetes.sh`
* [app.py](./app.py) : contains the flask app
* [Dockerfile](./app.py): Instructions to containerize the application
* [Makefile](./Makefile) : Instructions for environment setup and lint tests
* [requirements.txt](./requirements.txt): list of required dependencies
* [run_docker.sh](./run_docker.sh): bash script to build Docker Image and run the application in a Docker container
* [upload_docker.sh](./upload_docker.sh): bash script to upload the built Docker Image to Dockerhub
* [run_kubernetes.sh](./run_kubernetes.sh): bash script to run the application in a Kubernetes cluster
* [make_prediction.sh](./make_prediction.sh): bash script to make predictions against the Docker container and k8s cluster
* [README.md](./README.md): README file
* [commands.txt](./commands.txt): Useful commands

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl




