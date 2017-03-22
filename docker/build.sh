#!/bin/sh

set -ex

for channel in nightly; do
    docker build \
        --no-cache \
        --force-rm \
        --pull \
        --rm \
        --tag rust-playpen-$channel \
        --file docker/Dockerfile-$channel \
        docker
done
