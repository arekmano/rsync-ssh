# https://hub.docker.com/_/alpine/
FROM alpine:3.11

MAINTAINER arekmano <manoukian.arek@gmail.com>


RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            bash \
            openssh-client \
            ca-certificates \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*
