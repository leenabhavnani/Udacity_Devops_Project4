#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
dockerpath=leenabhavnani/udacity_devops_project4
# Step 1:
# This is your Docker ID/path
# dockerpath=<>

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project4 --image=leenabhavnani/udacity_devops_project4 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

echo "waiting to create the pod"
sleep 20
kubectl port-forward udacity-project4 8000:80