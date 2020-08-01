#!/usr/bin/env sh

docker build \
  --platform linux/amd64 \
  --build-arg BASEIMG=amd64/debian:buster \
  -t dockerbuildagent/buildcross-armhf:buster -f Dockerfile-cross-armhf .

