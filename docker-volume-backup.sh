#LANGKAH MANUAL
#0 siapkan volume yang ingin dibackup
mongovolume

#1 stop container yang sedang menggunakan volume yang ingin di backup
docker container stop contohmongo2

#2 create new dummy container untuk melakukan proses volume dari volume yang ingin dibackup ke directory container tersebut
# dan bind dari folder backup di directory container ke host directory
docker container create --name nginxbackup --mount "type=bind,source=D:\belajar-docker\volume-backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest

#3 starct dummy container
docker container start nginxbackup

#4 akses directory container 
docker container exec -i -t nginxbackup /bin/bash

#5 compress folder backup ke .tar
# backup dari folder /data ke folder /backup/backup.tar.gz
tar cvf /backup/backup.tar.gz /data

#6 stop dummy container
docker container stop nginxbackup

#7 remove dummy container
docker container rm nginxbackup

# =================
#LANGKAH 1X COMMAND

#1 pull image ubuntu
docker image pull ubuntu:latest

#2 stop container yang sedang menggunakan volume yang ingin di backup
docker container stop contohmongo2

#3 jalankan command run --rm
# command ini akan meremove container jika proses dari container itu sudah selesai
# gunakan image ubuntu karena setelah mengecompress backup maka proses pada container akan selesai
# lalu docker akan mematikan dan me remove container ini
docker container run --rm --name ubuntubackup --mount "type=bind,source=D:\belajar-docker\volume-backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data
