#!/bin/bash

SUDO=/bin/sudo

# Docker files

BUILDER_PATH="build"
BUILDER_NAME="$BUILDER_PATH/Dockerfile"

BUILDER_CONTENT="FROM fedora:34\n\
\n\
ENV WHERE_AM_I Docker_$BUILDER_PATH\n\
\n\
RUN dnf install -y \\ \n\
            gcc \\ \n\
            lld \\ \n\
            make    \\ \n\
            llvm    \\ \n\
            clang   \\ \n\
            gcc-c++    \\ \n\
            llvm-devel  \\ \n\
            mingw32-gcc \\ \n\
            mingw64-gcc \\ \n\
            mingw32-llvm    \\ \n\
            mingw64-llvm    \\ \n\
            mingw64-gcc-c++ \\ \n\
            mingw32-gcc-c++ \n\
\n\
# RUN dnf install -y \\ \n\
#             cmake \\ \n\
#             cmake-data \\ \n\
#             cmake-mingw32  \\ \n\
#             cmake-mingw64   \\ \n\
#             cmake-rpm-macros \\ \n\
#             cmake-filesystem  \n\
\n\
RUN dnf install -y \\ \n\
            SFML-devel  \\ \n\
            CSFML-devel \n\
\n\
# RUN dnf install -y \\ \n\
#             mingw32-SDL2-devel \\ \n\
#             mingw32-SDL2-devel \\ \n\
#             mingw64-SDL2-devel \\ \n\
#             mingw64-SDL2-devel \\ \n\
#             mingw32-SDL2-devel \\ \n\
#             mingw64-SDL2-devel \\ \n\
#             mingw32-SDL2-devel \\ \n\
#             mingw64-SDL2-devel \\ \n\
#             mingw32-SDL2_ttf-devel \\ \n\
#             mingw64-SDL2_ttf-devel \\ \n\
#             mingw32-SDL2_net-devel \\ \n\
#             mingw64-SDL2_net-devel \\ \n\
#             mingw32-SDL2_gfx-devel \\ \n\
#             mingw64-SDL2_gfx-devel \\ \n\
#             mingw32-SDL2_ttf-devel \\ \n\
#             mingw64-SDL2_ttf-devel \\ \n\
#             mingw32-SDL2_net-devel \\ \n\
#             mingw64-SDL2_net-devel \\ \n\
#             mingw32-SDL2_gfx-devel \\ \n\
#             mingw64-SDL2_gfx-devel \\ \n\
#             mingw32-SDL2_ttf-devel \\ \n\
#             mingw64-SDL2_ttf-devel \\ \n\
#             mingw32-SDL2_net-devel \\ \n\
#             mingw64-SDL2_net-devel \\ \n\
#             mingw32-SDL2_gfx-devel \\ \n\
#             mingw64-SDL2_gfx-devel \\ \n\
#             mingw32-SDL2_ttf-devel \\ \n\
#             mingw64-SDL2_ttf-devel \\ \n\
#             mingw32-SDL2_net-devel \\ \n\
#             mingw64-SDL2_net-devel \\ \n\
#             mingw32-SDL2_gfx-devel \\ \n\
#             mingw64-SDL2_gfx-devel \\ \n\
#             mingw32-SDL2_image-devel \\ \n\
#             mingw64-SDL2_image-devel \\ \n\
#             mingw32-SDL2_mixer-devel \\ \n\
#             mingw64-SDL2_mixer-devel \\ \n\
#             mingw32-SDL2_image-devel \\ \n\
#             mingw64-SDL2_image-devel \\ \n\
#             mingw32-SDL2_mixer-devel \\ \n\
#             mingw64-SDL2_mixer-devel \\ \n\
#             mingw32-SDL2_image-devel \\ \n\
#             mingw64-SDL2_image-devel \\ \n\
#             mingw32-SDL2_mixer-devel \\ \n\
#             mingw64-SDL2_mixer-devel \\ \n\
#             mingw32-SDL2_image-devel \\ \n\
#             mingw64-SDL2_image-devel \\ \n\
#             mingw32-SDL2_mixer-devel \\ \n\
#             mingw64-SDL2_mixer-devel \n\
\n\
RUN dnf install -y  \\ \n\
                ncurses \\ \n\
                ncurses-devel \\ \n\
                ncurses-libs    \\ \n\
                ncurses-c++-libs   \\ \n\
                ncurses-compat-libs \n\
\n\
RUN dnf install -y  \\ \n\
                xz \\ \n\
                git \\ \n\
                tar \\ \n\
                zip \\ \n\
                wget \\ \n\
                gzip \\ \n\
                unzip   \\ \n\
                bzip2   \\ \n\
                python3 \\ \n\
                python3-pip \\ \n\
                python3-libs \\ \n\
                python3-devel \\ \n\
                python3-wheel  \\ \n\
                python3-setuptools \n\
\n\
# Compiling cheerp from source for fedora   \n\
RUN dnf install -y  \\ \n\
                gcc \\ \n\
                g++ \\ \n\
                lld \\ \n\
                git \\ \n\
                nodejs  \\ \n\
                cmake  \\ \n\
                python3 \\ \n\
                ninja-build \\ \n\
                python3-distlib \\ \n\
                python3-distutils-extra \n\
\n\
RUN cd /home   && \\ \n\
    echo 'Fetching cheerp dependencies' && \\ \n\
    mkdir cheerp && \\ \n\
    cd cheerp && \\ \n\
    export CHEERP_SRC=\$PWD && \\
    git clone --branch cheerp-3.0 https://github.com/leaningtech/cheerp-compiler && \\ \n\
    git clone --branch cheerp-3.0 https://github.com/leaningtech/cheerp-utils && \\ \n\
    git clone --branch cheerp-3.0 https://github.com/leaningtech/cheerp-musl && \\ \n\
    git clone --branch cheerp-3.0 https://github.com/leaningtech/cheerp-libs && \\ \n\
    echo 'Build Cheerp/1: compiler, stable version' && \\ \n\
    cd cheerp-compiler  && \\  \n\
    sed -i '13a\  llvm-ar' llvm/CheerpCmakeConf.cmake   && \\  \n\
    cmake -S llvm -B build -C llvm/CheerpCmakeConf.cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS=clang -G Ninja   && \\  \n\
    ninja -C build -j4  && \\  \n\
    ninja -C build install  && \\  \n\
    cd ..   && \\  \n\
    echo 'Build Cheerp/2: utilities and libraries, stable version' && \\ \n\
    cd cheerp-utils && \\ \n\
    cmake -B build -DCMAKE_INSTALL_PREFIX=/opt/cheerp . && \\ \n\
    make -C build install && \\ \n\
    cd .. && \\ \n\
\
    cd cheerp-musl && \\ \n\
    mkdir build_genericjs && \\ \n\
    cd build_genericjs && \\ \n\
    RANLIB='/opt/cheerp/bin/llvm-ar s' AR='/opt/cheerp/bin/llvm-ar'  CC='/opt/cheerp/bin/clang -target cheerp' LD='/opt/cheerp/bin/llvm-link' CFLAGS='-Wno-int-conversion' ../configure --target=cheerp --disable-shared --prefix=/opt/cheerp && \\ \n\
    make clean && \\ \n\
    make -j8 && \\ \n\
    make install && \\ \n\
    cd .. && \\ \n\
    mkdir build_asmjs && \\ \n\
    cd build_asmjs && \\ \n\
    RANLIB='/opt/cheerp/bin/llvm-ar s' AR='/opt/cheerp/bin/llvm-ar'  CC='/opt/cheerp/bin/clang -target cheerp-wasm' LD='/opt/cheerp/bin/llvm-link' CFLAGS='-Wno-int-conversion' ../configure --target=cheerp-wasm --disable-shared --prefix=/opt/cheerp && \\ \n\
    make clean && \\ \n\
    make -j8 && \\ \n\
    make install && \\ \n\
    cd ../.. && \\ \n\
\
    cd cheerp-compiler && \\ \n\
    cmake -S runtimes -B build_runtimes_genericjs -GNinja -C runtimes/CheerpCmakeConf.cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE='/opt/cheerp/share/cmake/Modules/CheerpToolchain.cmake' && \\ \n\
    ninja -C build_runtimes_genericjs && \\ \n\
    ninja -C build_runtimes_genericjs install && \\ \n\
\
    cmake -S runtimes -B build_runtimes_wasm -GNinja -C runtimes/CheerpCmakeConf.cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE='/opt/cheerp/share/cmake/Modules/CheerpWasmToolchain.cmake' && \\ \n\
    ninja -C build_runtimes_wasm && \\ \n\
    ninja -C build_runtimes_wasm install && \\ \n\
    cd .. && \\ \n\
\
    cd cheerp-libs && \\ \n\
    make -C webgles install INSTALL_PREFIX=/opt/cheerp CHEERP_PREFIX=/opt/cheerp && \\ \n\
    make -C wasm install INSTALL_PREFIX=/opt/cheerp CHEERP_PREFIX=/opt/cheerp && \\ \n\
    make -C stdlibs install INSTALL_PREFIX=/opt/cheerp CHEERP_PREFIX=/opt/cheerp && \\ \n\
    cd .. && \\ \n\
\
    echo 'Cheerp installation: FINISHED' \n\
\n\
RUN echo 'Testing Cheerp' && \\ \n\
    FILE_NAME=cheerp_example.cpp && \\ \n\
    BIN_NAME=cheerp_example.js && \\ \n\
    echo '#include <iostream>;int main() {std::cout << \"Hello, World!\\\\n\";return 0;}' > \$BIN_NAME && \\ \n\
    /opt/cheerp/bin/clang++ \$FILE_NAME -o \$BIN_NAME -O3 && \\ \n\
    node cheerp_example.js  && \\ \n\
    echo 'Cheerp test: FINISHED' \n\
\n\
RUN cd /home/cheerp && \\ \n\
    cd cheerp-utils/tests   &&  \\ \n\
    python run-tests.py /opt/cheerp/bin/clang++ node --all -j8  && \\ \n\
    echo 'Cheerp tests: FINISHED' \n\
\n\
\n\
\n\
RUN mkdir /home/in\n\
\n\
WORKDIR /home/in\n\
"

SERVER_PATH="server"
SERVER_NAME="$SERVER_PATH/Dockerfile"

SERVER_CONTENT="FROM fedora:34\n\
\n\
ENV WHERE_AM_I Docker_$SERVER_PATH\n\
\n\
EXPOSE 80\n\
"

# Docker-compose file

DOCKER_COMPOSE_PATH="."
DOCKER_COMPOSE_NAME="$DOCKER_COMPOSE_PATH/docker-compose.yml"

DOCKER_COMPOSE=""

# generic functions
function create_fold_if_not_exist() {
    FOLD_PATH=$1
    if [ ! -d $FOLD_PATH ]; then
        mkdir -p $FOLD_PATH
    fi
}

function create_if_not_exist() {
    IMAGE_PATH=$1
    IMAGE_NAME=$2
    shift 2
    IMAGE_CONTENT="$@"
    if [ ! -d $IMAGE_PATH ]; then
        mkdir -p $IMAGE_PATH
    fi
    if [ ! -f $IMAGE_NAME ]; then
        echo -e "$IMAGE_CONTENT" >$IMAGE_NAME
    fi
}

function docker_compose() {
    local DOCKER_COMPOSE_PATH=$1
    local DOCKER_COMPOSE_NAME=$2
    shift 2
    local DOCKER_COMPOSE_COMMAND="$@"

    $SUDO docker-compose -f "$DOCKER_COMPOSE_PATH/$DOCKER_COMPOSE_NAME" "$DOCKER_COMPOSE_COMMAND"
}

# one-action functions
function start_docker_compose() {
    docker_compose $DOCKER_COMPOSE_PATH $DOCKER_COMPOSE_NAME up
}

function stop_docker_compose() {
    docker_compose $DOCKER_COMPOSE_PATH $DOCKER_COMPOSE_NAME down
}

function build_docker_compose() {
    docker_compose $DOCKER_COMPOSE_PATH $DOCKER_COMPOSE_NAME build
}

function exec_docker_compose() {
    docker_compose $DOCKER_COMPOSE_PATH $DOCKER_COMPOSE_NAME exec "$@"
}

#  Main function

function display_help() {
    echo "USAGE:"
    echo "  $1 [COMMAND]"
    echo ""
    echo "COMMANDS:"
    echo "  build       Build the docker-compose"
    echo "  up          Start the docker-compose"
    echo "  down        Stop the docker-compose"
    echo "  exec        Execute a command in the docker-compose"
    echo "  interactive Execute a bash in the docker-compose"
    echo ""
    echo "OPTIONS:"
    echo "  --help, -h, /?  Display this help message"
    echo ""
    echo "EXAMPLES:"
    echo "  $1 build"
    echo "  $1 up"
    echo "  $1 down"
    echo "  $1 exec server /bin/bash"
    echo "  $1 interactive"
    echo ""
    echo "  $1 build up"
    echo "  $1 build up down"
    echo "  $1 build up exec server /bin/bash"
    echo "  $1 build up interactive"
    echo ""
}

function main() {
    local BIN_NAME=$1
    shift
    create_fold_if_not_exist "tmp_build"
    create_fold_if_not_exist "website/assembly"
    create_if_not_exist $BUILDER_PATH $BUILDER_NAME $BUILDER_CONTENT
    create_if_not_exist $SERVER_PATH $SERVER_NAME $SERVER_CONTENT
    create_if_not_exist $DOCKER_COMPOSE_PATH $DOCKER_COMPOSE_NAME $DOCKER_COMPOSE
    while [ $# -ge 1 ]; do
        if [ $1 == "--help" ] || [ $1 == "-h" ] || [ $1 == "/?" ]; then
            display_help $BIN_NAME
            exit 0
        fi
        if [ $1 == "build" ]; then
            build_docker_compose
        fi
        if [ $1 == "up" ]; then
            start_docker_compose
        fi
        if [ $1 == "down" ]; then
            stop_docker_compose
        fi
        if [ $1 == "exec" ]; then
            shift
            exec_docker_compose "$@"
        fi
        if [ $1 == "interactive" ]; then
            exec_docker_compose -it "/bin/bash"
        fi
        shift
    done
    echo "(c) Created by Henry Letellier"
}

if [ $# -gt 0 ]; then
    main $0 "$@"
else
    display_help $0
fi
