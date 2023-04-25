#!/bin/bash
# This script is used to build the WebAssembly version of the program.

#  admin vars

SUDO=/bin/sudo

# Vars
CC=
CPPFLAGS=
CFLAGS=
LDFLAGS=
LDLIBS=
EMCC=
EMCCFLAGS=
EMCCLDFLAGS=
EMCCLDLIBS=

# Compiler Environement
DOCKER_COMPILER_IMAGE_SRC=fedora:34
DOCKER_COMPILER_IMAGE_NAME=my-fedora34
DOCKER_COMPILER_CONTAINER_NAME=my-fedora34-wa-compiler
DOCKERFILE_COMPILER_NAME=""

# Web Environement
DOCKER_DEPLOYER_IMAGE_SRC=httpd:2.4.57
DOCKER_DEPLOYER_IMAGE_NAME=my-apache2
DOCKER_DEPLOYER_CONTAINER_NAME=my-apache2-web-assembly
DOCKERFILE_DEPLOYER_NAME=""

#  web_settings
PORT=8080
DOCKER_CONTAINER_PORT_HOST=80

# functions
## Generic

function create_dockerfile() {
    local DOCKERFILE_NAME=$1
    shift
    local DOCKERFILE_CONTENT="$@"

    echo "$DOCKERFILE_CONTENT" > "$DOCKERFILE_NAME"
}

function create_local_folder() {
    local FOLDER_NAME=$1

    if [ ! -d "$FOLDER_NAME" ]; then
        mkdir -p "$FOLDER_NAME"
    fi
}

function remove_local_folder() {
    local FOLDER_NAME=$1

    if [ -d "$FOLDER_NAME" ]; then
        rm -rf "$FOLDER_NAME"
    fi
}

## generic functions to run in docker
function docker_run() {
    local DOCKER_IMAGE_NAME=$1
    local DOCKER_CONTAINER_NAME=$2
    local HOST_VOLUME_PATH=$3
    local DOCKER_VOLUME_PATH=$4
    local HOST_PORT=$5
    local DOCKER_PORT=$5
    shift 2
    shift 2
    local DOCKER_COMMAND="$@"

    $SUDO docker run --rm -v "$HOST_VOLUME_PATH":"$DOCKER_VOLUME_PATH" -it --name "$DOCKER_CONTAINER_NAME" "$DOCKER_IMAGE_NAME" "$DOCKER_COMMAND"
}

function docker_run_with_volume() {
    local DOCKER_IMAGE_NAME=$1
    local DOCKER_CONTAINER_NAME=$2
    local DOCKER_VOLUME_NAME=$3
    local DOCKER_VOLUME_PATH=$4
    shift 4
    local DOCKER_COMMAND="$@"

    $SUDO docker run --rm -it --name "$DOCKER_CONTAINER_NAME" -v "$DOCKER_VOLUME_NAME":"$DOCKER_VOLUME_PATH" "$DOCKER_IMAGE_NAME" "$DOCKER_COMMAND"
}

function docker_run_with_port() {
    local DOCKER_IMAGE_NAME=$1
    local DOCKER_CONTAINER_NAME=$2
    local DOCKER_PORT_HOST=$3
    local DOCKER_PORT_CONTAINER=$4
    shift 4
    local DOCKER_COMMAND="$@"

    $SUDO docker run --rm -it --name "$DOCKER_CONTAINER_NAME" -p "$DOCKER_PORT_HOST":"$DOCKER_PORT_CONTAINER" "$DOCKER_IMAGE_NAME" "$DOCKER_COMMAND"
}

function docker_run_with_volume_and_port() {
    local DOCKER_IMAGE_NAME=$1
    local DOCKER_CONTAINER_NAME=$2
    local DOCKER_VOLUME_NAME=$3
    local DOCKER_VOLUME_PATH=$4
    local DOCKER_PORT_HOST=$5
    local DOCKER_PORT_CONTAINER=$6
    shift 6
    local DOCKER_COMMAND="$@"

    $SUDO docker run --rm -it --name "$DOCKER_CONTAINER_NAME" -v "$DOCKER_VOLUME_NAME":"$DOCKER_VOLUME_PATH" -p "$DOCKER_PORT_HOST":"$DOCKER_PORT_CONTAINER" "$DOCKER_IMAGE_NAME" "$DOCKER_COMMAND"
}

function run_command_in_docker() {
    local DOCKER_CONTAINER_NAME=$2
    shift
    local DOCKER_COMMAND="$@"

    $SUDO docker exec -it $DOCKER_CONTAINER_NAME /bin/bash -c "$DOCKER_COMMAND"
}

function create_folder_in_docker() {
    local DOCKER_CONTAINER_NAME=$2
    local FOLDER_NAME=$2

    run_command_in_docker "$DOCKER_CONTAINER_NAME" mkdir -p "$FOLDER_NAME"
}

function remove_folder_in_docker() {
    local DOCKER_CONTAINER_NAME=$2
    local FOLDER_NAME=$2

    run_command_in_docker "$DOCKER_CONTAINER_NAME" rm -rf "$FOLDER_NAME"
}

## Compiler
function build_program() {
    
}

function build_server() {

}

function main() {
    build_program
    build_server
    
}
