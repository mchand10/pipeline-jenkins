#!/bin/bash

#COPY the new jar to the build location

cp target/*.jar .

echo "*******Building Docker images*******"

docker-compose -f docker-composebuild.yml build --no-cache
