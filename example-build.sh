#!/bin/bash

# create an example-build image by running through the process to
# build the wheel

docker build --tag example-build:latest \
    --file example-build.dockerfile \
    .

# start up a container and copy the distribution directory that contains
# the wheel to the mapped export directory

mkdir -p export

docker run -it --rm \
    --user $(id -u ${USER}):$(id -g ${USER}) \
    -v $(pwd)/export:/export \
    example-build \
    bash -c 'cp -v ./dist/* /export'

