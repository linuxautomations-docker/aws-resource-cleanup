#!/bin/bash


source ./build-params 
docker build -t $REPO_NAME:$TAG .
docker push $REPO_NAME:$TAG
