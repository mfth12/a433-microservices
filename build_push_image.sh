#!/bin/sh
# membuat docker image dari dockerfile, dngn nama item-app dan tag v1
docker build -t item-app:v1 .
# menampilkan daftar image yang ada di lokal
docker images
# mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 mfth12/item-app:v1
# login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u mfth12 --password-stdin
# mengunggah image ke Docker Hub
docker push mfth12/item-app:v1