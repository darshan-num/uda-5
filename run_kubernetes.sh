# Step 1:
#Fetch cluster arn 
# sudo apt-get install jq
# aws ecs describe-clusters --cluster default | jq . > output_arn.json
# clusterarn=jq ".clusters[].clusterArn" output_arn.json
# echo $clusterarn
clusterarn=arn:aws:eks:us-east-2:450295081108:cluster/prod

# Step 2:
# Assign variables
dockerpath=dashnum/dash-uda-4:commit1
clustername=prod

# Step 3
# Update kubeconfig
aws eks --region us-east-2 update-kubeconfig --name $clustername


# Step 4:
# Set context with cluster arn
kubectl config use-context $clusterarn

# Step 5:
# apply the manifest file 
kubectl apply -f eks-cluster.yml
sleep 10
# Step 6:
# Get nodes and test
kubectl get nodes
kubectl get deployments