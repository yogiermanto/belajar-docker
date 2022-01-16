docker container ls -a
#cek list container yang runiing dan tidak runiing

docker container ls 
#cek list container yang runiing saja

docker container create --name container-name image-name:tag
#ex
docker container create --name contohredis redis:latest
#create continaer

docker container start container-name/container-id
#ex
docker container start contohredis
#running/start container

docker container stop container-name/container-id
#ex
docker container stop contohredis
#stop container


docker container rm container-name/container-id
#ex
docker container rm contohredis
#delete container

