##
## EPITECH PROJECT, 2022
## make_web_compatible
## File description:
## run_web_assembly_compilation.sh
##

echo "rwac: $(pwd)"
echo "variables: $@"

if [ $# -ne 2 ]; then
    echo "USAGE: $0 INPUT_DIR OUTPUT_DIR"
    exit 1
fi

# BASH CONSTANTS
TRUE=0
FALSE=1

# BASH INPUTS
INPUT_DIR=$1
OUTPUT_DIR=$2
TMP_DIR="/home/tmp"

BIN_NAME="wa_prog"

# BASH_DEPENDENCIES
DEP_FOLD=set-up_tools
CHECK_INTEGRITY=$DEP_FOLD/check_environement_integrity.sh
COPY_USR_DATA=$DEP_FOLD/copy_usr_data.sh
COMPILE_USR_DATA=$DEP_FOLD/compile_usr_data.sh
EXPORT_COMPILATION=$DEP_FOLD/export_compilation.sh

# Generic functions
function grant_rights() {
    if [ $# -ge 1 ]; then
        while [ $# -ge 1 ]; do
            if [ -f $1 ]; then
                chmod +x $1
            else
                return $FALSE
            fi
            shift
        done
    else
        return $FALSE
    fi
}

# Specific functions
function boot_up() {
    grant_rights $CHECK_INTEGRITY $COPY_USR_DATA $COMPILE_USR_DATA $EXPORT_COMPILATION
    if [ $? -ne $TRUE ]; then
        echo "grant_rights failed"
        exit 1
    fi
}

function main() {
    boot_up
    $CHECK_INTEGRITY $INPUT_DIR $OUTPUT_DIR $TMP_DIR
    if [ $? -ne $TRUE ]; then
        echo "check_environement_integrity failed"
        exit 1
    fi
    $COPY_USR_DATA $INPUT_DIR $TMP_DIR
    if [ $? -ne $TRUE ]; then
        echo "copy_usr_data failed"
        exit 1
    fi
    $COMPILE_USR_DATA $TMP_DIR $BIN_NAME
    if [ $? -ne $TRUE ]; then
        echo "compile_usr_data failed"
        exit 1
    fi
    $EXPORT_COMPILATION $TMP_DIR $OUTPUT_DIR $BIN_NAME
    if [ $? -ne $TRUE ]; then
        echo "export_compilation failed"
        exit 1
    fi
}

main
