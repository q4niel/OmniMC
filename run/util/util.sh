#!/bin/bash

init() {
    if [ "$(uname)" != "Linux" ]; then
        echo -e "Oops! Not running on Linux silly.\n\nEXITING SCRIPT"
        exit 1
    fi

    if [[ $EUID -ne 0 ]]; then
        echo -e "This script must be run as root.\n\nEXITING SCRIPT"
        exit 1
    fi
}

requireCmd() {
    if ! command -v $1 > /dev/null 2>&1; then
        echo -e "$2\n\nEXITING SCRIPT"
        exit 1
    fi
}