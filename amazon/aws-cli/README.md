Imagem base:

https://github.com/aws/aws-cli/blob/v2/docker/Dockerfile

docker build . -t paxtecnologia/aws-cli:latest
docker build . -t paxtecnologia/aws-cli:v2
docker push paxtecnologia/aws-cli:latest
docker push paxtecnologia/aws-cli:v2