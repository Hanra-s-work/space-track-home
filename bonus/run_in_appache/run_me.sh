#!/bin/bash
# (c) Created by Henry Letellier

# rigths
SUDO=sudo

# Build data
PULL_NAME=httpd:2.4.57
IMAGE_NAME=my-apache2
DOCKER_PORT=80
CONTAINER_ID=000000000000
CONTAINER_NAME=my-running-app
DOCKERFILE_PATH="."

# Web access data
PORT=8080
URL=http://localhost:$PORT

# Mount data
DEFAULT_DEST_DIR=/usr/local/apache2/htdocs/
MOUNT_DEST_DIRECTORY=space-track-home

# Display colours
RES_COL="\033[0;0m\033[0;0m"
TIT_COL="\033[40m\033[93m"
HEL_COL="\033[40m\033[1;93m"
END_COL="\033[40m\033[1;92m"
INF_COL="\033[40m\033[1;96m"
SUB_TIT_COL="\033[40m\033[1;95m"

function disp_any_col {
    COL_1=$1
    TEXT=$3
    COL_2=$2
    echo -e "${COL_1}${TEXT}${COL_2}"
}

function disp_title {
    disp_any_col $TIT_COL $RES_COL "#############################################"
    disp_any_col $TIT_COL $RES_COL "#                                           #"
    disp_any_col $TIT_COL $RES_COL "#  Welcome to the Space-Track docker runner #"
    disp_any_col $TIT_COL $RES_COL "#                                           #"
    disp_any_col $TIT_COL $RES_COL "#############################################"
    disp_any_col $TIT_COL $RES_COL ""
}

function disp_section_title {
    disp_any_col $SUB_TIT_COL $RES_COL "#############################################"
    disp_any_col $SUB_TIT_COL $RES_COL "#                                           #"
    disp_any_col $SUB_TIT_COL $RES_COL "#  $1  #"
    disp_any_col $SUB_TIT_COL $RES_COL "#                                           #"
    disp_any_col $SUB_TIT_COL $RES_COL "#############################################"
    disp_any_col $SUB_TIT_COL $RES_COL ""
}

function disp_section_info {
    disp_any_col $INF_COL $RES_COL "+-------------------------------------------+"
    disp_any_col $INF_COL $RES_COL "|                                           |"
    disp_any_col $INF_COL $RES_COL "|  $1  |"
    disp_any_col $INF_COL $RES_COL "|  $2  |"
    disp_any_col $INF_COL $RES_COL "|                                           |"
    disp_any_col $INF_COL $RES_COL "+-------------------------------------------+"
}

function disp_help() {
    disp_any_col $HEL_COL $RES_COL "Usage: $1 [DOCKERFILE_PATH] [rebuild] [exec] [pull] [interactive]"
    disp_any_col $HEL_COL $RES_COL "Example: $1 exec"
    disp_any_col $HEL_COL $RES_COL "Example: $1 rebuild"
    disp_any_col $HEL_COL $RES_COL "Example: $1 rebuild exec"
    disp_any_col $HEL_COL $RES_COL "Example: $1 pull interactive"
    disp_any_col $HEL_COL $RES_COL "Example: $1 pull exec interactive"
    disp_any_col $HEL_COL $RES_COL "Example: $1 /home/user/my_dockerfile_dir"
    disp_any_col $HEL_COL $RES_COL "Example: $1 /home/user/my_dockerfile_dir exec"
    disp_any_col $HEL_COL $RES_COL "Example: $1 /home/user/my_dockerfile_dir rebuild"
    disp_any_col $HEL_COL $RES_COL "Example: $1 /home/user/my_dockerfile_dir exec rebuild"
    exit 0
}

function get_container_id {
    disp_section_title "Get container ID"
    disp_any_col $TIT_COL $RES_COL "Getting container ID"
    ID=$(sudo docker ps -aqf "name=$CONTAINER_NAME")
    if [ -z "$ID" ]; then
        disp_any_col $END_COL $RES_COL "No container found"
    else
        disp_any_col $END_COL $RES_COL "Container ID found"
        disp_any_col $INF_COL $RES_COL "ID: $ID"
        CONTAINER_ID=$ID
    fi
}

function run_command_in_container() {
    disp_section_title "Run command in container"
    disp_any_col $TIT_COL $RES_COL "Running command '$1' in the docker"
    $SUDO docker exec -it $CONTAINER_NAME /bin/bash -c "$1"
    disp_any_col $END_COL $RES_COL "Command run"
}

function mount_volume() {
    disp_section_title "Mount a volume"
    get_container_id
    disp_any_col $TIT_COL $RES_COL "Mounting volume"
    local RES=${MOUNT_DEST_DIR}/${MOUNT_DEST_DIRECTORY}
    # $SUDO docker container mount $CONTAINER_ID "$(pwd)":"${MOUNT_DEST_DIR}/${MOUNT_DEST_DIRECTORY}"
    $SUDO docker container update --mount type=bind,source=$(pwd),target=${RES} ${CONTAINER_ID}
    disp_any_col $END_COL $RES_COL "Volume mounted"
}

function create_redirect_file() {
    disp_section_title "Create redirect file"
    disp_any_col $TIT_COL $RES_COL "Creating redirect file ..."
    run_command_in_container "
 mkdir -p $DEFAULT_DEST_DIR/$MOUNT_DEST_DIRECTORY && \
 echo \"<!DOCTYPE html>\" > $DEFAULT_DEST_DIR/index.html && \
 echo \"<html>\" >> $DEFAULT_DEST_DIR/index.html && \
 echo \"<head>\" >> $DEFAULT_DEST_DIR/index.html && \
 echo \"<meta http-equiv=\\\"refresh\\\" content=\\\"0; url=/$MOUNT_DEST_DIRECTORY\\\" />\" >> $DEFAULT_DEST_DIR/index.html && \
 echo \"</head>\" >> $DEFAULT_DEST_DIR/index.html && \
 echo \"<body>\" >> $DEFAULT_DEST_DIR/index.html && \
 echo \"<p>Redirecting to <a href=\\\"/$MOUNT_DEST_DIRECTORY\\\">/$MOUNT_DEST_DIRECTORY</a></p>\" >> $DEFAULT_DEST_DIR/index.html && \
 echo \"</body>\" >> $DEFAULT_DEST_DIR/index.html && \
 echo \"</html>\" >> $DEFAULT_DEST_DIR/index.html"
    echo "Redirect file created"
}

function mount_volume_and_redirect {
    disp_section_title "Mount a volume and redirect"
    if [ ${#MOUNT_DEST_DIRECTORY} -ge 0 ]; then
        disp_any_col $TIT_COL $RES_COL "Creating required folder"
        run_command_in_container "mkdir -p $DEFAULT_DEST_DIR/$MOUNT_DEST_DIRECTORY"
        disp_any_col $END_COL $RES_COL "Created required folder"
        disp_any_col $TIT_COL $RES_COL "Creating redirection file"
        create_redirect_file
        disp_any_col $END_COL $RES_COL "Created redirection file"
    fi
    disp_any_col $TIT_COL $RES_COL "Mounting volume"
    mount_volume
    disp_any_col $END_COL $RES_COL "Volume mounted"
}

function rebuild_server() {
    disp_section_title "Rebuild Server"
    disp_any_col $TIT_COL $RES_COL "Stopping any previous containers ..."
    $SUDO docker stop $CONTAINER_NAME
    disp_any_col $TIT_COL $RES_COL "Removing any previous containers ..."
    $SUDO docker rm $CONTAINER_NAME
    disp_any_col $TIT_COL $RES_COL "Removing any previous image ..."
    $SUDO docker image rm $IMAGE_NAME
    disp_any_col $TIT_COL $RES_COL "Building ..."
    $SUDO docker build -t $IMAGE_NAME $DOCKERFILE_PATH
    disp_any_col $END_COL $RES_COL "Building done"
}

function launch_server() {
    disp_section_title "Launch Server"
    disp_any_col $TIT_COL $RES_COL "Stopping any previous containers ..."
    $SUDO docker stop $CONTAINER_NAME
    disp_any_col $TIT_COL $RES_COL "Removing any previous containers ..."
    $SUDO docker rm $CONTAINER_NAME
    disp_any_col $TIT_COL $RES_COL "Launching server..."
    $SUDO docker run -dit --name $CONTAINER_NAME -p $PORT:$DOCKER_PORT $IMAGE_NAME
    # mount_volume_and_redirect
    disp_any_col $END_COL $RES_COL "Server launched"
    disp_section_info "Server launched on port: $PORT" "url: $URL"
}

function launch_interactive() {
    disp_section_title "Launch interactive"
    disp_any_col $TIT_COL $RES_COL "Stopping any previous containers ..."
    $SUDO docker stop $CONTAINER_NAME
    disp_any_col $TIT_COL $RES_COL "Removing any previous containers ..."
    $SUDO docker rm $CONTAINER_NAME
    disp_any_col $TIT_COL $RES_COL "Launching server..."
    $SUDO docker run -v "$(pwd)":"${MOUNT_DEST_DIR}/${MOUNT_DEST_DIRECTORY}" -dit --name $CONTAINER_NAME -p $PORT:$DOCKER_PORT $IMAGE_NAME
    # $SUDO docker run -dit --name $CONTAINER_NAME -p $PORT:$DOCKER_PORT $IMAGE_NAME
    disp_any_col $INF_COL $RES_COL "${DEST_DIRECTORY}"
    # mount_volume_and_redirect
    disp_section_info "Server launched on port: $PORT" "url: $URL"
}

function fetch_content() {
    disp_section_title "Fetch content"
    disp_any_col $TIT_COL $RES_COL "Fetching the home page ..."
    disp_any_col $TIT_COL $RES_COL "Letting the docker spin up ..."
    sleep 4s
    disp_any_col $TIT_COL $RES_COL "curl $URL"
    curl $URL
    disp_any_col $INF_COL $RES_COL "Content fetched at: $URL"
}

function enter_tty() {
    disp_section_title "Enter tty"
    disp_any_col $TIT_COL $RES_COL "Letting the docker spin up ..."
    sleep 4s
    disp_any_col $TIT_COL $RES_COL "Entering tty ..."
    $SUDO docker exec -it $CONTAINER_NAME /bin/bash
}

disp_title

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
echo -e "$RES_COL"
