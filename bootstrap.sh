#!/bin/bash

if [ "$(uname)" != "Linux" ]; then
    echo "Oops! Not running on Linux silly."
    exit 1
fi

if ! command -v wget > /dev/null 2>&1; then
    echo "Erm... 'wget' isn't instaled?"
    exit 1
fi

projDir="$(dirname $(realpath "$0"))"
metaDir="$projDir/.meta"

if [ -d $metaDir ]; then
    rm -r $metaDir
fi

mkdir $metaDir