#!/bin/bash

DIR=$(dirname "$(readlink -f "$0")")

#docker-compose up --build
docker build ./ -t steamvr_openhmd/build
docker run -ti --rm \
    -e USER=$USER \
    -v $HOME:/home/$USER \
    -v $DIR:/tmp/dev/ \
    -v /etc/passwd:/etc/passwd \
    --name build \
steamvr_openhmd/build:latest "$@"

./register.sh
