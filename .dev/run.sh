#!/usr/bin/env bash

IMAGE_NAME="${IMAGE_NAME:-$(basename $(pwd))}"

function _which() {
  which "$1" > /dev/null
}

FRIENDLY_NAME="kube-app"

DOCKER_BUILD="docker build -t '${IMAGE_NAME}:development' ."
eval "$DOCKER_BUILD"

# DOCKER_RUN="docker run \
             # -it \
             # --rm \
             # --init \
             # --env NODE_ENV \
             # --env AWS_ACCESS_KEY_ID \
             # --env AWS_SECRET_ACCESS_KEY \
             # --env AWS_SESSION_TOKEN \
             # --env SUMO_ENDPOINT \
             # --env DEBUG \
             # --name ${FRIENDLY_NAME} \
             # ${IMAGE_NAME}:development

# eval "$DOCKER_RUN"
