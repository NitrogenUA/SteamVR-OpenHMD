#!/bin/bash

cd /tmp/dev

git submodule update --init

mkdir -p /tmp/dev/build

cd /tmp/dev/build

runuser -c 'cmake ../ && make'

echo "All Build Suscessfully!"
