#!/bin/bash

set -eu
EXTRA_ARGS=""

if [[ $# -gt 0 ]]; then
    EXTRA_ARGS="-e source-bucket-base-name='$1'"
fi

docker build -f Dockerfile.builder -t northwoods/serverless-image-handler-builder .
