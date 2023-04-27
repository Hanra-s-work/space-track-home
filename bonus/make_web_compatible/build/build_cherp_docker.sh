#!/bin/bash

SUDO=/bin/sudo
image_name=debian:latest
container_name=cherp

function launch_container() {
    $SUDO docker run -it -v "$(pwd)":"/home/in" -d --name $container_name $image_name
}

function run_in_container() {
    $SUDO docker exec -it $container_name /bin/bash -c $@
}

function stop_container() {
    $SUDO docker stop $container_name
}

function remove_container() {
    $SUDO docker rm $container_name
}

function clean_up() {
    stop_container
    remove_container
}

if [ $# -eq 0 ]; then
    stop_container
    remove_container
    launch_container
    run_in_container "apt-get install -y sudo cmake make curl patch make cmake SFML SFML-devel systemd-devel gcc-c++ glm-devel.noarch libX11-devel libxcb-devel libXrandr-devel libgudev-devel libjpeg-turbo-devel libogg-devel libvorbis-devel xcb-util-devel xcb-util-image-devel mesa-libGL-devel mesa-libEGL-devel openal-soft-devel freetype-devel flac-devel"
    run_in_container "cd /home/in && chmod +x ./install.sh && ./install.sh"
    run_in_container "/bin/bash"
fi
