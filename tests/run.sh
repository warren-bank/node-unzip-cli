#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
workspace="${DIR}/workspace"
output="${workspace}/output"

[ -d "$workspace" ] && rm -rf "$workspace"
mkdir "$workspace"
mkdir "$output"
cd "$workspace"

npm init -y
npm install --save "${DIR}/.."
clear

PATH="${workspace}/node_modules/.bin:${PATH}"

# download an arbitrary zip file
zip_url='https://github.com/cthackers/adm-zip/archive/refs/tags/v0.5.16.zip'
zip_fname='v0.5.16.zip'
wget -nv --no-check-certificate "$zip_url"

cd "$output"

# extract to cwd: "./workspace/output"
extract-zip "../${zip_fname}"

mkdir "rel-subdir"
extract-zip "../${zip_fname}" "rel-subdir"

mkdir "abs-subdir"
extract-zip "${workspace}/${zip_fname}" "${output}/abs-subdir"
