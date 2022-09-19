#!/bin/bash

docker stop backend2-api
docker rm backend2-api

docker build -t "backend2-image" ../backend2
docker run -t -d -p 8080:3000 --network my-service --name backend2-api backend2-image

docker image prune
docker ps