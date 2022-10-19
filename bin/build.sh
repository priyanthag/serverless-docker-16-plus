#!/bin/bash
set -e 
if [[ -z $RELEASE ]]; then
    echo "Error: undefined RELEASE environment variable."
    exit 1
fi
docker build --build-arg RELEASE="$RELEASE" -t pgdesigning/serverless-docker-16-plus .
docker tag pgdesigning/serverless-docker-16-plus:latest pgdesigning/serverless-docker-16-plus:"$RELEASE"