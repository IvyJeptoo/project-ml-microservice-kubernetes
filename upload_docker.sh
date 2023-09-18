#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=jeptoo/ivyudacitymicroservice:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login 
docker tag ivyudacitymicroservice:latest $dockerpath


# Step 3:
docker push $dockerpath