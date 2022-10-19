#!/bin/bash
set -e 
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker push pgdesigning/serverless-docker-16-plus:latest;
docker push pgdesigning/serverless-docker-16-plus:"$RELEASE";
