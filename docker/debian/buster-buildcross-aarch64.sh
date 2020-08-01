#!/usr/bin/env sh

docker build \
  --platform linux/amd64 \
  --build-arg BASEIMG=amd64/debian:buster \
  -t dockerbuildagent/buildcross-aarch64:buster -f Dockerfile-cross-aarch64 .

