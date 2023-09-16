#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t flask-app:v1 .

# Step 2: 
docker images

# Step 3: Run the containerized Flask app; publish the container’s port to a host port
docker run -p 8080:80 flask-app:v1
