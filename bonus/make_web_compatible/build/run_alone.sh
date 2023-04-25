##
## EPITECH PROJECT, 2022
## make_web_compatible
## File description:
## run_alone.sh
##

IMAGE_NAME=web-assembly-build
CONTAINER_NAME=wa-build

SRC_VOL1="$(pwd)/prog"
DEST_VOL1="/home/in"
VOL1=$SRC_VOL1:$DEST_VOL1

SRC_VOL2="$(pwd)/tmp_build"
DEST_VOL2="/home/out"
VOL2=$SRC_VOL2:$DEST_VOL2

if [ $# -eq 0 ]; then
    sudo docker stop $CONTAINER_NAME
    sudo docker rm $CONTAINER_NAME
    sudo docker run -it -v $VOL1 -v $VOL2 -d --name $CONTAINER_NAME $IMAGE_NAME
    sudo docker exec -it $CONTAINER_NAME /bin/bash
else
    if [ $1 == "--help" ] || [ $1 == "-h" ] || [ $1 == "/?" ]; then
        echo "USAGE:"
        echo "  $1 [COMMAND_TO_THE_DOCKER]"
        echo ""
    fi
    sudo docker stop $CONTAINER_NAME
    sudo docker rm $CONTAINER_NAME
    sudo docker run -it -v $VOL1 -v $VOL2 -d --name $CONTAINER_NAME $IMAGE_NAME
    sudo docker exec -it $CONTAINER_NAME /bin/bash -c "$@"
fi
