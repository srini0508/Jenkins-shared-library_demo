#!/usr/bin/env bash

version_input="git"
version_output="git"
version_increment_type=""
version_prefix="v"
version_file_language="go"
version_file="./version_info"
version_message=""
version_bash_file="./version_env.sh"
oldversion=$(cat version_info)

l_tag=$(git rev-list --tags --max-count=1)
git_version=$(git describe --tags $l_tag)
oldversion=$git_version

echo "1. old version is $oldversion"
