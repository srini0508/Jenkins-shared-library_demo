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

sm_increment() {
  local increment_type=$1
  local current_version=$( echo $oldversion | tr -dc '0-9.' )
  echo "2. sm_increment_without v $current_version"
  local version_array=( ${current_version//./ } )
  case $increment_type in
    "major" )
      ((version_array[0]++))
      version_array[1]=0
      version_array[2]=0
      ;;
    "minor" )
      ((version_array[1]++))
      version_array[2]=0
      ;;
    "patch" )
      ((version_array[2]++))
      ;;
  esac

  echo "${version_array[0]}.${version_array[1]}.${version_array[2]}"
}

