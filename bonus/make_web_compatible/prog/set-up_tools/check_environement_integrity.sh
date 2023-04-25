##
## EPITECH PROJECT, 2022
## make_web_compatible
## File description:
## check_environement_integrity.sh
##

echo "cei: $(pwd)"
if [ $# -ne 3 ]; then
    echo "USAGE: $0 INPUT_DIR OUTPUT_DIR TMP_DIR"
    exit 1
fi

# CONSTANTS
TRUE=0
FALSE=1

# INPUTS
INPUT_DIR=$1
OUTPUT_DIR=$2
TMP_DIR=$3

function check_if_dir_exists() {
    if [ ! -d $1 ]; then
        return $FALSE
    fi
    return $TRUE
}

function create_directory() {
    if [ ! -d $1 ]; then
        mkdir -p $1
    fi
}

function is_dir_empty() {
    if [ "$(ls -A $1)" ]; then
        return $FALSE
    fi
    return $TRUE
}

# The program
function main() {
    check_if_dir_exists $INPUT_DIR
    if [ $? -ne $TRUE ]; then
        echo "The input directory does not exist"
        exit 1
    fi
    check_if_dir_exists $OUTPUT_DIR
    if [ $? -ne $TRUE ]; then
        echo "The output directory does not exist"
        exit 1
    fi
    check_if_dir_exists $TMP_DIR
    if [ $? -ne $TRUE ]; then
        echo "The tmp directory does not exist"
        echo "Creating directory"
        create_directory $TMP_DIR
    fi
    is_dir_empty $INPUT_DIR
    if [ $? -eq $TRUE ]; then
        echo "The input directory is empty"
        exit 1
    fi
}
