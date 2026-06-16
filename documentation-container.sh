#!/bin/bash
#
# Start the documentation container for typesetting.
#

UPONE="${PWD%/*}"
echo Container will have access to $UPONE
docker run -it --rm -v /run/host-services/ssh-auth.sock:/ssh-agent -e SSH_AUTH_SOCK="/ssh-agent" -v $UPONE:$UPONE -w $PWD --name documentation documentation bash

