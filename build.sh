#!/bin/bash


source ./build-params 
rm -rf AWS
git clone --depth=1 https://github.com/linuxautomations/AWS.git 
rm -rf AWS/.git
docker build -t $REPO_NAME:$TAG .
docker push $REPO_NAME:$TAG
