#!/bin/bash
apk add git
# clone repository
read -p "Enter URL of repository: " repository 
git clone $repository 

# build Dockerfile in root
dir=$(echo ${repository##*/})

cd /usr/src/app/$dir

dir=$(echo "$dir" | tr '[:upper:]' '[:lower:]')

docker build . -t $dir

# publish
read -p "Enter DockerHub username: " username
read -s -p "Enter DockerHub password: " password

docker login -u $username -p $password
docker tag $dir $username/$dir
docker push $username/$dir


