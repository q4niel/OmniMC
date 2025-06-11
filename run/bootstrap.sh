#!/bin/bash
cd "$(dirname $(dirname $(realpath "$0")))"
source ./run/util/util.sh

init
requireCmd wget "Erm... 'wget' isn't installed?"

metaDir="./.meta"
templateDir="$metaDir/template"

if [ -d $metaDir ]; then
    rm -r $metaDir
fi

mkdir $metaDir
mkdir $templateDir