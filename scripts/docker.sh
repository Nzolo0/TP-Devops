# Connexion à Docker
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
# Build
docker build -t $DOCKER_USERNAME/tp-devops:simple-api simple-api
docker build -t $DOCKER_USERNAME/tp-devops:database database
docker build -t $DOCKER_USERNAME/tp-devops:httpd httpd
# Publication des images
docker push $DOCKER_USERNAME/tp-devops:simple-api
docker push $DOCKER_USERNAME/tp-devops:database
docker push $DOCKER_USERNAME/tp-devops:httpd