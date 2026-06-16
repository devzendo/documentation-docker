#!/bin/bash
#
# Clones all the documentation repositories at the same level as this 'documentation-docker' clone
# if they do not already exist.
#
set -euf -o pipefail

# Move to the folder the script is in (for consistency) - https://stackoverflow.com/a/246128
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1

function clone_my_repo() {
  clone_url "$1" "https://github.com/devzendo/$1.git"
}

function clone_url() {
  OLDPWD=`pwd`
  cd ..
  if [ ! -d "$1" ]; then
    git clone "$2.git" "$1"
  fi
  cd "$OLDPWD"
}
  
clone_my_repo parachute-book

