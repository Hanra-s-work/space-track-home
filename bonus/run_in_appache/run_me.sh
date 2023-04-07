#!/bin/bash
# (c) Created by Henry Letellier

SUDO=sudo
PORT=8080
DOCKER_PORT=80
DOCKER_NAME=my-apache2
CONTAINER_NAME=my-running-app
URL=http://localhost:$PORT

function disp_help() {
    echo "Usage: $1 [path_to_apache] [path_to_php]"
    echo "Example: $1 /usr/sbin/apache2 /usr/bin/php"
    exit 0
}

function launch_server() {
    echo "Stopping any previous containers ..."
    $SUDO docker stop $CONTAINER_NAME
    echo "Removing any previous containers ..."
    $SUDO docker rm $CONTAINER_NAME
    echo "Building ..."
    $SUDO docker build -t $DOCKER_NAME .
    echo "Building done"
    echo "Launching server..."
    $SUDO docker run -dit --name $CONTAINER_NAME -p $PORT:$DOCKER_PORT $DOCKER_NAME
    echo "Server launched on port: $PORT"
    echo "url: $URL"
}

function fetch_content() {
    echo "Fetching the home page ..."
    echo "curl $URL"
    echo "$(curl $URL)"
    echo "Content fetched at: $URL"
}

function enter_tty() {
    echo "Entering tty ..."
    $SUDO docker exec -it $CONTAINER_NAME /bin/bash
}

if [ $# -eq 1 ]; then
    if [ $1 == '-h' ] || [ $1 == '-help' ] || [ $1 == '-?']; then
        disp_help $0
    elif [ $1 == '--h' ] || [ $1 == '--help' ] || [ $1 == '--?']; then
        disp_help $0
    elif [ $1 == '/h' ] || [ $1 == '/help' ] || [ $1 == '/?']; then
        disp_help $0
    elif [ $1 == 'exec' ]; then
        launch_server
        enter_tty
    fi
else
    launch_server
    fetch_content
fi
