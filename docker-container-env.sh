docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest
#run container with environtment using --env

