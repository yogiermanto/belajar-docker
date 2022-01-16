docker container ls -a
#cek list container yang runiing dan tidak runiing

docker container ls 
#cek list container yang runiing saja

docker container create --name CONTAINER-NAME IMAGE-NAME:TAG
#ex
docker container create --name contohredis redis:latest
#create continaer

docker container start CONTAINER-NAME/CONTAINER-ID
#ex
docker container start contohredis
#running/start container

docker container stop CONTAINER-NAME/CONTAINER-ID
#ex
docker container stop contohredis
#stop container


docker container rm CONTAINER-NAME/CONTAINER-ID
#ex
docker container rm contohredis
#delete container

