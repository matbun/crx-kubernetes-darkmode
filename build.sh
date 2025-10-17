#!/bin/bash

# Build extension 

rm -rf output.tar.gz

docker run --rm \
  -u $(id -u):$(id -g) \
  -v "$PWD":/work -w /work \
  node:20-alpine \
  sh -lc 'npm ci && npx wxt build -b chrome'

tar -czvf output.tar.gz .output