#!/bin/bash
##
## EPITECH PROJECT, 2022
## make_web_compatible
## File description:
## compile_usr_data.sh
##

echo "cud: $(pwd)"

if [ $# -ne 2 ]; then
    echo "USAGE: $0 INPUT_DIR TMP_DIR"
    exit 1
fi

# CONSTANTS
TRUE=0
FALSE=1

# INPUTS
INPUT_DIR=$1
TMP_DIR=$2

# System commands
CC=clang
CFLAGS=
