#!/bin/bash

echo "******** Testing Maven ********"

WORKSPACE=/var/jenkins_home/workspace

docker run --rm -it -v $WORKSPACE:/app -v ./downloads:/root/.m2/ -w /app maven:3-alpine "$@"
