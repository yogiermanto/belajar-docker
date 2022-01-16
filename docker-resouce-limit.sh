docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 1.5 nginx:latest
#mengatur resouce limit pada container
#cpus 1.5 = satu dan setengah core cpu