eksctl create cluster \
--name prod \
--version 1.18 \
--region us-east-2 \
--nodegroup-name standard-worker \
--node-type t3.micro \
--nodes 2 \
--nodes-min 1 \
--nodes-max 2 \
--managed
