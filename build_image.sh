#!/bin/sh

NODEJS_VERSION=${1:-10.14.0}

docker build \
  --build-arg NODEJS_VERSION=${NODEJS_VERSION} \
  -t honomoa/jenkins-nodejs:${NODEJS_VERSION}-alpine \
  .
