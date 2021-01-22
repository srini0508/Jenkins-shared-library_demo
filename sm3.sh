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

while getopts ":Mmp" Option
do
  case $Option in
    M ) major=true;;
    m ) minor=true;;
    p ) patch=true;;
  esac
done

shift $(($OPTIND - 1))
current_version=$( echo $oldversion | tr -dc '0-9.' )
version=$current_version

# Build array from version string.

a=( ${version//./ } )

# If version string is missing or has the wrong number of members, show usage message.

if [ ${#a[@]} -ne 3 ]
then
  echo "usage: $(basename $0) [-Mmp] major.minor.patch"
  exit 1
fi

# Increment version numbers as requested.

if [ ! -z $major ]
then
  ((a[0]++))
  a[1]=0
  a[2]=0
fi

if [ ! -z $minor ]
then
  ((a[1]++))
  a[2]=0
fi

if [ ! -z $patch ]
then
  ((a[2]++))
fi

echo "$version_prefix${a[0]}.${a[1]}.${a[2]}"
