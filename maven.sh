#!/bin/bash

echo "**********STARTING MAVEN BUILD*********"

docker run --rm -it -v $PWD:/app -v $PWD/downloads:/root/.m2/ -w /app maven:3-alpine "$@"
