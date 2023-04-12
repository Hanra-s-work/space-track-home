#!/bin/bash
# (c) Created by Henry Letellier

SUDO=sudo
PORT=8080
PULL_NAME=httpd:2.4.57
DOCKER_PORT=80
DOCKERFILE_PATH="."
IMAGE_NAME=my-apache2
CONTAINER_NAME=my-running-app
URL=http://localhost:$PORT

function disp_help() {
    echo "Usage: $1 [DOCKERFILE_PATH] [rebuild] [exec] [pull] [interactive]"
    echo "Example: $1 exec"
    echo "Example: $1 rebuild"
    echo "Example: $1 rebuild exec"
    echo "Example: $1 pull interactive"
    echo "Example: $1 pull exec interactive"
    echo "Example: $1 /home/user/my_dockerfile_dir"
    echo "Example: $1 /home/user/my_dockerfile_dir exec"
    echo "Example: $1 /home/user/my_dockerfile_dir rebuild"
    echo "Example: $1 /home/user/my_dockerfile_dir exec rebuild"
    exit 0
}

function rebuild_server() {
    echo "Stopping any previous containers ..."
    $SUDO docker stop $CONTAINER_NAME
    echo "Removing any previous containers ..."
    $SUDO docker rm $CONTAINER_NAME
    echo "Removing any previous image ..."
    $SUDO docker image rm $IMAGE_NAME
    echo "Building ..."
    $SUDO docker build -t $IMAGE_NAME $DOCKERFILE_PATH
    echo "Building done"
}

function launch_server() {
    echo "Stopping any previous containers ..."
    $SUDO docker stop $CONTAINER_NAME
    echo "Removing any previous containers ..."
    $SUDO docker rm $CONTAINER_NAME
    echo "Launching server..."
    $SUDO docker run -dit --name $CONTAINER_NAME -p $PORT:$DOCKER_PORT $IMAGE_NAME
    echo "Server launched on port: $PORT"
    echo "url: $URL"
}

function launch_interactive() {
    echo "Stopping any previous containers ..."
    $SUDO docker stop $CONTAINER_NAME
    echo "Removing any previous containers ..."
    $SUDO docker rm $CONTAINER_NAME
    echo "Launching server..."
    $SUDO docker run -v "$(pwd)":"/usr/local/apache2/htdocs/" -dit --name $CONTAINER_NAME -p $PORT:$DOCKER_PORT $IMAGE_NAME
    echo "Server launched on port: $PORT"
    echo "url: $URL"
}

function fetch_content() {
    echo "Fetching the home page ..."
    echo "Letting the docker spin up ..."
    sleep 5s
    echo "curl $URL"
    curl $URL
    echo "Content fetched at: $URL"
}

function enter_tty() {
    echo "Letting the docker spin up ..."
    sleep 5s
    echo "Entering tty ..."
    $SUDO docker exec -it $CONTAINER_NAME /bin/bash
}

if [ $# -ge 1 ]; then
    if [ $1 == '-h' ] || [ $1 == '-help' ] || [ $1 == '-?' ]; then
        disp_help $0
        exit 0
    elif [ $1 == '--h' ] || [ $1 == '--help' ] || [ $1 == '--?' ]; then
        disp_help $0
        exit 0
    elif [ $1 == '/h' ] || [ $1 == '/help' ] || [ $1 == '/?' ]; then
        disp_help $0
        exit 0
    elif [ $1 == 'rebuild' ]; then
        rebuild_server
        if [ $# -ge 2 ]; then
            if [ $2 == 'exec' ]; then
                launch_server
                enter_tty
                exit 0
            fi
        else
            launch_server
            fetch_content
            exit 0
        fi
    elif [ -d $1 ]; then
        DOCKERFILE_PATH=$1
        if [ $# -ge 2 ]; then
            if [ $2 == 'rebuild' ]; then
                rebuild_server
                if [ $# -ge 3 ]; then
                    if [ $3 == 'exec' ]; then
                        launch_server
                        enter_tty
                        exit 0
                    fi
                else
                    launch_server
                    fetch_content
                    exit 0
                fi
            elif [ $2 == 'exec' ]; then
                launch_server
                enter_tty
                exit 0
            fi
        else
            launch_server
            fetch_content
            exit 0
        fi
    elif [ $1 == 'exec' ]; then
        launch_server
        enter_tty
        exit 0
    elif [ $1 == 'pull' ]; then
        echo "Pulling image ..."
        $SUDO docker pull $PULL_NAME
        echo "Image pulled"
        echo "Running image ..."
        IMAGE_NAME=$PULL_NAME
        launch_server
        if [ $# -ge 2 ]; then
            if [ $2 == 'interactive' ]; then
                if [ $# -ge 3 ] && [ $3 == 'exec' ]; then
                    launch_interactive
                    enter_tty
                    exit 0
                else
                    launch_interactive
                    fetch_content
                    exit 0
                fi
            elif [ $2 == 'exec' ]; then
                if [ $# -ge 3 ] && [ $3 == 'interactive' ]; then
                    launch_interactive
                    enter_tty
                    exit 0
                else
                    launch_server
                    enter_tty
                    exit 0
                fi
            fi
            fetch_content
            exit 0
        fi
    fi
else
    launch_server
    fetch_content
    exit 0
fi
