#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=microservicesudacity .
# Step 2: 
docker image ls
# Step 3: 
docker run -p 8080:80 microservicesudacity
