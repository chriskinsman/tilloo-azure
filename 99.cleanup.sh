az group delete --name tilloo
kubectl config delete-cluster tilloo
kubectl config delete-context tilloo
kubectl config unset users.clusterUser_tilloo_tilloo
