#!/bin/sh

NODEJS_VERSION=${1:-8.13.0}

docker build \
  --build-arg NODEJS_VERSION=${NODEJS_VERSION} \
  -t honomoa/jenkins-nodejs:${NODEJS_VERSION}-alpine \
  .
