#!/bin/bash

# This script will "docker pull" the given image and tag from the central brtdockerrepo repository.

if [ "$#" -lt 2 ]; then
cat << EOF

This script will "docker pull" the given image and tag from the central brtdockerrepo repository.

usage: $0 <image> <tag>

<image> docker image from brt repository

<tag>  version tag

EOF
exit 1
fi

function pull() {
  image=$1
  tag=$2

  docker pull system-services.bluerivertech.com:16000/brtdockerrepo/$image:$tag

}

pull $@
