# Create resource group
az group create --name tilloo --location $AZ_REGION
# Create k8s cluster
az aks create --resource-group tilloo --name tilloo --enable-addons monitoring --kubernetes-version "1.12.7" --location $AZ_REGION
az aks enable-addons --resource-group tilloo --name tilloo --addons http_application_routing
# Add creds to kubectl
az aks get-credentials --resource-group tilloo --name tilloo

echo "Don't forget to update HTTP application routing domain in tilloo.yaml"