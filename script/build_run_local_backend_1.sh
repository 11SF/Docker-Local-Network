#!/bin/bash

docker stop backend1-api
docker rm backend1-api

docker build -t "backend1-image" ../backend
docker run -t -d -p 8081:1323 --network my-service --name backend1-api backend1-image

docker image prune
docker ps
