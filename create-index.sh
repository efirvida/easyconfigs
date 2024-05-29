#!/bin/bash

INDEX_FOLDER=${PWD}/easyconfigs

rm -rf ${INDEX_FOLDER}
mkdir -p ${INDEX_FOLDER}

find . -type f \( -name "*.eb" -o -name "*.patch" \) -exec ln -s "${PWD}/{}" ${INDEX_FOLDER} ';'
eb --create-index=${INDEX_FOLDER} --force