docker container exec -i -t CONTAINER-ID/CONTAINER-NAME DIRECTORY
#ex
docker container exec -i -t contohredis /bin/bash
#masuk kedalam container
#-i adalah argument intereaktif, menjaga input tetap aktif
#-t adalah untuk akses terminal
#/bin/bash directory dalam container