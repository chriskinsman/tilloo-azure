# tilloo-azure

This repository provides samples to:

1. Use the Azure cli to deploy a complete production ready k8s cluster.
2. Deploy the tilloo job scheduler engine into that k8s cluster

## Getting Started
You will need to:

1. Login to Azure using az login
2. Set AZ_REGION environment variable to a valid Azure region i.e. westus2
3. Modify 4.create-acr.sh to use a unique acr name.  Update the acr name in 5.build-container.sh and tilloo.yaml
4. Modify tilloo.yaml to include the FQDN you want tilloo deployed at.  Look in the Azure portal for HTTP application routing domain.


Steps are intended to be run in numerical order.

If you only want to create a k8s cluster you can stop after 1.create-cluster.sh.

## Dashboard
1a.install-dashboard.sh is an optional step to install the cluster role bindings for the k8s dashboard.  
100.start-dashboard.sh uses the az cli to launch the dashboard.

## Cleanup
99.cleanup.sh cleans up the resources that have been created and shuts down the cluster.
