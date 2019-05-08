az acr login --name tilloosample
docker build -t tilloosample.azurecr.io/tilloo:3 .
docker push tilloosample.azurecr.io/tilloo:3
