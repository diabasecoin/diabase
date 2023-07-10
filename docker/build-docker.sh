#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-dashpay/dashd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/diabased docker/bin/
cp $BUILD_DIR/src/diabase-cli docker/bin/
cp $BUILD_DIR/src/diabase-tx docker/bin/
strip docker/bin/diabased
strip docker/bin/diabase-cli
strip docker/bin/diabase-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
