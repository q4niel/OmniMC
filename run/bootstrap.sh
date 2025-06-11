#!/bin/bash
cd "$(dirname $(dirname $(realpath "$0")))"
source ./run/util/util.sh

init
requireCmd wget "Erm... 'wget' isn't installed?"

metaDir="./.meta"
binDir="$metaDir/bin"
templateDir="$metaDir/template"
tmpDir="$metaDir/tmp"

if [ -d $metaDir ]; then
    rm -r $metaDir
fi

mkdir $metaDir
mkdir $binDir
mkdir $templateDir
mkdir $tmpDir

wget -O "$tmpDir/pyrun.tgz" https://github.com/eGenix/egenix-pyrun/releases/download/egenix-pyrun-2.6.0/egenix-pyrun-2.6.0-py3.12_ucs4-linux-x86_64.tgz
mkdir "$binDir/pyrun"
tar -xvzf "$tmpDir/pyrun.tgz" -C "$binDir/pyrun"

pyrun ./run/util/bootstrap.py