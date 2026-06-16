#!/bin/bash
#
# To be run in the container, builds all the cloned documentation components at the
# same level as this 'documentation-docker' clone.
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

UPONE="${PWD%/*}"

if [ ! -f /.dockerenv ]; then
  echo This script must be run from inside the documentation-docker container
  exit 1
fi

cd ..

echo Parachute Book
(cd parachute-book; make)

