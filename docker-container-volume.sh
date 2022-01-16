docker volume create mongovolume
#create volume

docker container create --name contohmongo2 --mount "type=volume,source=mongovolume,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest
#create container dengan menggunakan volume
