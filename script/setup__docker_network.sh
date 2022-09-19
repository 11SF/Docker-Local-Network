#!/bin/bash

docker network create -d bridge my-service
docker network ls
docker inspect my-service
