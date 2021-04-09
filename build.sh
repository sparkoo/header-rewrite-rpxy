#!/bin/bash

IMAGE=${IMAGE:-quay.io/mvala/header-rewrite-rpxy:latest}

set -x

docker build -f build/Containerfile -t ${IMAGE} .
docker push ${IMAGE}
