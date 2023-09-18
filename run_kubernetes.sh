#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# Define your Docker repository and tag
dockerpath="jeptoo/ivyudacitymicroservice:latest"

# Step 2:
# Create a Kubernetes deployment
kubectl create deployment ivyudacitymicroservice --image=$dockerpath

# Step 3:
# List Kubernetes pods
kubectl get pods

# Step 4:
# Create a Kubernetes service (LoadBalancer) to expose the deployment
kubectl expose deployment ivyudacitymicroservice --type=LoadBalancer --port=80 --target-port=80

# Step 5:
# Wait for the service's external IP to be assigned (might take a moment)
kubectl wait --for=condition=available --timeout=300s service/ivyudacitymicroservice

# Step 6:
# Open the service in a web browser (Minikube specific)
minikube service ivyudacitymicroservice