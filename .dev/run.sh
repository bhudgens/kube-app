#!/usr/bin/env bash

IMAGE_NAME="${IMAGE_NAME:-$(basename $(pwd))}"

function _which() {
  which "$1" > /dev/null
}

FRIENDLY_NAME="kube-app"

DOCKER_BUILD="docker build -t '${IMAGE_NAME}:development' ."
eval "$DOCKER_BUILD"

DOCKER_RUN="docker run \
             -it \
             --rm \
             -p 3000:3000 \
             --env NODE_ENV \
             --name ${FRIENDLY_NAME} \
             ${IMAGE_NAME}:development"

eval "$DOCKER_RUN"
