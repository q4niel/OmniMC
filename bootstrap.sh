#!/bin/bash

projDir="$(dirname $(realpath "$0"))"
metaDir="$projDir/.meta"

if [ -d $metaDir ]; then
    rm -r $metaDir
fi

mkdir $metaDir