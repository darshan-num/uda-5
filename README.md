# CircleCi Status:
[![CircleCI](https://circleci.com/gh/darshan-num/uda-4.svg?style=svg&circle-token=7e613b703addd9331f2fb97a952fbb25cfea4810)](https://app.circleci.com/pipelines/github/darshan-num/uda-4?branch=develop)

## Project Summary
This project's goal is to operationalize this working, machine learning microservice using kubernetes.
In this project we have:
* Implemented code linting
* Provided a Dockerfile to containerize this application
* Provided a bash script to configure and create a Kubernetes cluster

## Project Instructions
Use the following steps to start the project
* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`
`python app.py`

## Building and pushing docker image

 - run -> ./build_and_push_docker.sh - Builds the docker image and pushes it to docker hub

## Create a EKS cluster
Command will create a eks cluster named "prod" having min 1 and max 3 resources 
Size = t3.micro

- run -> ./create_cluster.sh - Creates EKS cluster with nodegroups having 2 pods

## Deploy clean docker image to kubernets 

- run -> ./run_kubernetes.sh - Deploy docker image to the kubernetes cluster 

Uses the eks-cluster.yml manifest file for kubernetes deployement





