ARG NODEJS_VERSION
FROM node:${NODEJS_VERSION}-alpine

ARG NODEJS_VERSION
ENV NODEJS_VERSION=${NODEJS_VERSION:-8.13.0}

RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.8/main/ upgrade     && \
    apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.8/main/ add            \
    sshpass openssh-client rsync bash git openssh                                           && \
    rm -rf /tmp/*
