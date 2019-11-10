#!/bin/bash

echo maven_proj > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth

echo $PASS >> /tmp/.auth

scp -i /opt/Remote /tmp/.auth prod-user@ec2-13-233-131-179.ap-south-1.compute.amazonaws.com:/tmp/.auth

scp -i /opt/Remote ./automate.sh prod-user@ec2-13-233-131-179.ap-south-1.compute.amazonaws.com:/tmp/publish

ssh -i /opt/Remote prod-user@ec2-13-233-131-179.ap-south-1.compute.amazonaws.com "/tmp/publish"

