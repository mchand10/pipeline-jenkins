#!/bin/bash

echo "**********STARTING MAVEN BUILD*********"

WORKSPACE="/var/jenkins_home/workspace"

docker run --rm -i -v $PWD:/app -v $WORKSPACE/downloads:/root/.m2/ -w /app maven:3-alpine "$@"
