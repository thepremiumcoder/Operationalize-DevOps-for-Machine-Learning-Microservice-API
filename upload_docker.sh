#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=thepremiumcoder/udc-devops-ml-microservice-api-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag udc-devops-ml-microservice-api-project $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest