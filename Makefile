setup:
	# Creating python virtualenv & sourcing it
	python3 -m venv ~/.devops

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip && pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# Lint docker file
	hadolint Dockerfile
	# Lint python code
	pylint --disable=R,C,W1203 app.py
	# Lint kubernetes file
	kubeval eks-cluster.yml

all: install lint test


# eksctl create cluster \
# --name prod \
# --version 1.18 \
# --region us-east-2 \
# --nodegroup-name standard-worker \
# --node-type t3.micro \
# --nodes 2 \
# --nodes-min 1 \
# --nodes-max 2 \
# --managed


# $curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# unzip awscliv2.zip
# sudo ./aws/install

# $aws --version

# aws-cli/2.0.30 Python/3.7.3 Linux/4.14.181-142.260.amzn2.x86_64 botocore/2.0.0dev34

# aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 450295081108.dkr.ecr.us-east-2.amazonaws.com

# aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u8l2z0i8
 
#  docker push 450295081108.dkr.ecr.us-east-2.amazonaws.com/dashapi

#  450295081108.dkr.ecr.us-east-1.amazonaws.com/public.ecr.aws/u8l2z0i8/testecrrepo:latest

#  kubectl run deploy -n kube-system --image=450295081108.dkr.ecr.us-east-2.amazonaws.com/myprivaterepo:latest \
#  --requests=cpu=500m --expose --port=8080


# eksctl create cluster --name prod \
# --version 1.18 \
# --nodegroup-name standard-workers 
# --node-type t3.micro \
# --nodes 3 \
# --nodes-min 1 \
# --nodes-max 4 \
# --node-ami auto \
# --region ap-south-1

# aws eks --region us-east-2 update-kubeconfig --name prod

# kubectl config use-context arn:aws:eks:us-east-2:450295081108:cluster/prod