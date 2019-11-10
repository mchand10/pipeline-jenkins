#!/bin/bash

echo "****** PUSHING IMAGE TO DOCKER *******"

IMAGE="mchand10/maven_proj"


echo "******* Docker login *****"

docker login -u mchand10 -p $PASS

echo "**** Docker Push ****"

docker push $IMAGE:$BUILD_TAG

echo "Copying to remote machine"


scp -i /opt/Remote /tmp/.auth  prod-user@ec2-13-233-131-179.ap-south-1.compute.amazonaws.com:/tmp/.auth 
