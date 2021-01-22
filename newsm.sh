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



  latest_commit_message=$(git log -1 --pretty=%B)
  message=$latest_commit_message 
  if [[ $message == *"[major]"* ]]; then
      echo "major"
      major=true
      version_increment_type="Major"
  elif [[ $message == *"[minor]"* ]]; then
      echo "minor"
      minor=true
      version_increment_type="Minor"
  else
      echo "patch"
      patch=true
      version_increment_type="Minor"
  fi
echo $version_increment_type


echo "1. old version is $oldversion"
current_version=$( echo $oldversion | tr -dc '0-9.' )
version=$current_version
echo "XXX"
echo $version
# Build array from version string.

a=( ${version//./ } )
echo $a
# If version string is missing or has the wrong number of members, show usage message.

if [ ${#a[@]} -ne 3 ]
then
  echo "usage: $(basename $0) [-Mmp] major.minor.patch"
  exit 1
fi
echo $major $minor $patch
echo "YYYYYYYYY"
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
echo "HERE IT IS>>>>>>>>>"
echo "$version_prefix${a[0]}.${a[1]}.${a[2]}" > version_info
echo $(cat version_info)

