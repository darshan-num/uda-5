#!/usr/bin/env bash

# Step 1:
# Build docker image
docker build -t dashapi .
 
# Step 2: 
# Login to dockerhub
#docker login --username ** --password **

# Step 3: 
# Tag docker image
docker tag dashapi dashnum/dash-uda-4

# Step 4: 
# Deploy docker image
docker push dashnum/dash-uda-4
