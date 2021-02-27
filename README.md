# CircleCi Status:
[![CircleCI](https://circleci.com/gh/darshan-num/uda-4.svg?style=svg&circle-token=7e613b703addd9331f2fb97a952fbb25cfea4810)](https://app.circleci.com/pipelines/github/darshan-num/uda-4?branch=develop)

## Project Summary
This project's goal is to operationalize this working, machine learning microservice using kubernetes.
In this project we have:
* Implemented code linting
* Provided a Dockerfile to containerize this application
* Deployed docker container on Dockerhub and made a prediction
* Add logs for app.py
* Provided a bash script to configure and create a Kubernetes cluster


## Project Instructions
Use the following steps to start the project
* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`
`python app.py`

## Project File structure
Main files to build kubernetes and docker container are,

Main application - app.py
Requirements - requirements.txt
Circleci config - .circleci/config.yml

1. Run in Docker:  `./run_docker.sh`
2. Run in Kubernetes:  `./run_kubernetes.sh`

We can proceed to commit and push this docker container to dockerhub using,

1. Upload Docker:  `./upload_docker.sh`

We can make the predictions using,

1. Make predictions:  `./make_prediction.sh`

Logs are maintained at,

1. Docker container Logs:  `docker_out.txt`
2. Kubernetes Logs:  `kubernetes_out.txt`
