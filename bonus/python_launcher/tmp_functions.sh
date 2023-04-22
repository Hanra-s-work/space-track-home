#!/bin/bash
# This script is used to run the web version of the container.

SUDO=sudo

CONTAINER_NAME=""
CONTAINER_IMAGE=""
CONTAINER_PORT=""
CONTAINER_VOLUME=""
CONTAINER_ENV=""

SRC_FOLD=""
DEST_FOLD=""

PORT=8080
URL="http://localhost:$PORT"

function check_for_the_dockerfile {
    if [ ! -f Dockerfile ]; then
        echo "Dockerfile not found."
        exit 1
    fi
}

function check_for_the_docker_compose_file {
    if [ ! -f docker-compose.yml ]; then
        echo "docker-compose.yml not found."
        exit 1
    fi
}

function check_for_the_docker_compose {
    if ! command -v docker-compose &>/dev/null; then
        echo "docker-compose could not be found."
        exit 1
    fi
}

function check_for_the_docker {
    if ! command -v docker &>/dev/null; then
        echo "docker could not be found."
        exit 1
    fi
}

function check_for_the_docker_image {
    if ! $SUDO docker image ls | grep -q "$CONTAINER_IMAGE"; then
        echo "Docker image not found."
        exit 1
    fi
}

function check_for_the_docker_container {
    if ! $SUDO docker container ls -a | grep -q "$CONTAINER_NAME"; then
        echo "Docker container not found."
        exit 1
    fi
}

function check_for_the_docker_container_running {
    if ! $SUDO docker container ls | grep -q "$CONTAINER_NAME"; then
        echo "Docker container not running."
        exit 1
    fi
}

function check_for_the_docker_container_not_running {
    if $SUDO docker container ls | grep -q "$CONTAINER_NAME"; then
        echo "Docker container is running."
        exit 1
    fi
}

function check_for_the_docker_container_not_running_or_created {
    if $SUDO docker container ls -a | grep -q "$CONTAINER_NAME"; then
        echo "Docker container is running or created."
        exit 1
    fi
}

function check_for_the_docker_container_running_or_created {
    if ! $SUDO docker container ls -a | grep -q "$CONTAINER_NAME"; then
        echo "Docker container is not running or created."
        exit 1
    fi
}

function create_docker_image {
    echo "Building image ..."
    $SUDO docker build -t "$CONTAINER_IMAGE" .
}

function create_docker_container {
    echo "Creating container ..."
    $SUDO docker run -d --name "$CONTAINER_NAME" -p "$CONTAINER_PORT":"$PORT" -v "$CONTAINER_VOLUME" "$CONTAINER_IMAGE"
}
