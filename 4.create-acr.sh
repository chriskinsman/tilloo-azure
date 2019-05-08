az acr create --resource-group tilloo --name tilloosample --sku Standard --location $AZ_REGION

# Get the id of the service principal configured for AKS
CLIENT_ID=$(az aks show --resource-group tilloo --name tilloo --query "servicePrincipalProfile.clientId" --output tsv)

# Get the ACR registry resource id
ACR_ID=$(az acr show --name tilloosample --resource-group tilloo --query "id" --output tsv)

# Create role assignment
az role assignment create --assignee $CLIENT_ID --role acrpull --scope $ACR_ID