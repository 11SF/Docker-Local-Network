#!/bin/bash

docker inspect backend1-api | grep IPAddress
docker inspect backend2-api | grep IPAddress