#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="chandrababuchavuturi/microservicesudacity"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservicesudacity \
	    --image=$dockerpath \
	        --port=80 --labels app=microservicesudacity
# Wait to pod status will be ready
kubectl wait pod/microservicesudacity --for=condition=Ready --timeout=-1s
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward microservicesudacity 8080:80
