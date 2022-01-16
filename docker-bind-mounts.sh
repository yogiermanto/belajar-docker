#Bind Mounts merupakan kemampuan melakukan mounting (sharing) file atau folder -
#yang terdapat di sistem host ke container yang terdapat di docker
docker container create --name contohmongo2 --mount "type=bind,source=D:\belajar-docker\mongo-data,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest

#source = directory si host
#destination = directory container 
