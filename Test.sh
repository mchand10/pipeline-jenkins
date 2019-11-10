#!/bin/bash

echo "******** Testing Maven ********"

WORKSPACE=/var/jenkins_home/workspace/pipeline-docker-mvn

docker run --rm -i -v $WORKSPACE/app -v downloads:/root/.m2/ -w /app maven:3-alpine "$@"
