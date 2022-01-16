docker image pull nginx:latest

docker container create --name CONTAINER-NAME --publish PORT-HOST:PORT-CONTAINER IMAGE-NAME:TAG
#ex
docker container create --name contohnginx --publish 8080:80 nginx:latest
#post forwarding (mengakses port container diluar container atau mengakses container di laptop)