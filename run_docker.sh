#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag=ivyudacitymicroservice .

# Step 2: 
docker images ls

# Step 3: Run the containerized Flask app; publish the container’s port to a host port
docker run -p 8000:80 ivyudacitymicroservice 
