#!/bin/bash
# This script is used to run the python script to set-up any docker you wish
# This script was created by (c) Henry Letellier

# Get_os_data
OS=$(uname -s)
ARCH=$(uname -m)
OS_NAME=$(uname --operating-system)
PROCESSOR_TYPE=$(uname --processor)
KERNEL_RELEASE=$(uname --kernel-release)
KERNEL_VERSION=$(uname --kernel-version)
HARDWARE_PLATFORM=$(uname --hardware-platform)

# Python info
PYTHON_BIN=python
PYTHON_VERSION=$($PYTHON_BIN --version | cut -d' ' -f2)

# Prog info
PROG_NAME=launcher.py

# Env Info
ENV_NAME=lvenv
ENV_PATH=$(pwd)/$ENV_NAME
ENV_ACTIVATE_PATH=$ENV_PATH/bin/activate

# Colour constants
RES_COL="\033[0;0m\033[0;0m"
TIT_COL="\033[40m\033[93m"
HEL_COL="\033[40m\033[1;94m"
END_COL="\033[40m\033[1;92m"
INF_COL="\033[40m\033[1;96m"
SUB_TIT_COL="\033[40m\033[1;95m"

# Functions
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

function disp_system_info {
    disp_any_col $HEL_COL $RES_COL "OS: '$OS'"
    disp_any_col $HEL_COL $RES_COL "ARCH: '$ARCH'"
    disp_any_col $HEL_COL $RES_COL "OS_NAME: '$OS_NAME'"
    disp_any_col $HEL_COL $RES_COL "PROCESSOR_TYPE: '$PROCESSOR_TYPE'"
    disp_any_col $HEL_COL $RES_COL "KERNEL_RELEASE: '$KERNEL_RELEASE'"
    disp_any_col $HEL_COL $RES_COL "KERNEL_VERSION: '$KERNEL_VERSION'"
    disp_any_col $HEL_COL $RES_COL "HARDWARE_PLATFORM: '$HARDWARE_PLATFORM'"
    disp_any_col $HEL_COL $RES_COL "PYTHON_BIN: '$PYTHON_BIN'"
    disp_any_col $HEL_COL $RES_COL "PYTHON_VERSION: '$PYTHON_VERSION'"
    disp_any_col $HEL_COL $RES_COL "ENV_NAME: '$ENV_NAME'"
    disp_any_col $HEL_COL $RES_COL "ENV_PATH: '$ENV_PATH'"
    disp_any_col $HEL_COL $RES_COL "ENV_ACTIVATE_PATH: '$ENV_ACTIVATE_PATH'"
}

function create_env_if_not_exist {
    disp_section_title "Checking the virtual environement"
    if [ -d $ENV_PATH ]; then
        disp_any_col $END_COL $RES_COL "Virtual environment already exists"
    else
        disp_section_info "Creating virtual environment" "                                       "
        $PYTHON_BIN -m venv $ENV_PATH
        disp_any_col $END_COL $RES_COL "Virtual environement created"
    fi
}

function activate_env {
    disp_section_title "Activating virtual environment"
    source $ENV_ACTIVATE_PATH
    disp_any_col $END_COL $RES_COL "Virtual environement activated"
}

function install_requirements {
    disp_section_title "Installing requirements"
    disp_any_col $RES_COL $HEL_COL ""
    pip install -r requirements.txt
    disp_any_col $HEL_COL $RES_COL ""
    disp_any_col $END_COL $RES_COL "Requirements installed"
}

function run_script {
    disp_section_title "Running script"
    $PYTHON_BIN $PROG_NAME "$@"
    disp_any_col $END_COL $RES_COL "Script run"
}

function deactivate_env {
    disp_section_title "Deactivating virtual environment"
    deactivate
    disp_any_col $END_COL $RES_COL "Virtual environement deactivated"
}

function update_pip {
    disp_section_title "Updating pip"
    pip install --upgrade pip 1>/dev/null
    disp_any_col $END_COL $RES_COL "Pip updated"
}

function boot_up_sequence {
    disp_system_info
    create_env_if_not_exist
    activate_env
    update_pip
    install_requirements
    run_script "$@"
    deactivate_env
}

# Main
disp_title
boot_up_sequence "$@"
disp_any_col $RES_COL $RES_COL ""
