#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# Define your Docker repository and tag
dockerpath=jeptoo/ivyudacitymicroservice:latest

# Step 2:
# Run the Docker Hub container with kubernetes
kubectl create deployment ivyudacitymicroservice --image=$dockerpath

# Step 3:
# List Kubernetes pods
kubectl get pods

# Step 4:
# Create a Kubernetes service (LoadBalancer) to expose the deployment
kubectl port-forward deployment/ivyudacitymicroservice 8000:80