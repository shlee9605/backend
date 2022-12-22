#!/bin/bash

# setting - docker info
DOCKER_USER_NAME=wolfandcamel
DOCKER_IMAGE_NAME=backend
DOCKER_IMAGE_TAG=1.0
DOCKER_CONTAINER_NAME=app
DOCKER_PORT=3001
DOCKER_IMAGE=$DOCKER_USER_NAME/$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG

docker run --name $DOCKER_CONTAINER_NAME \
        -p $DOCKER_PORT:3000 \
        -e PORT=3000 \
        -e JWT_SECRET='jwtsecret' \
        -e LOGGER_LEVEL='debug' \
        -e DB_HOST='testdb.c1h5rheak3z9.ap-northeast-2.rds.amazonaws.com' \
        -e DB_PORT=3306 \
        -e DB_DATABASE='testDB' \
        -e DB_ID='root' \
        -e DB_PASS='rootroot' \
        -e DB_DIALECT='mysql' \
        -d \
        $DOCKER_IMAGE