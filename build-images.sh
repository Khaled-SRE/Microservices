#!/bin/bash

# Set image names for local testing
IMAGE_NAME="microservices"
TAG="latest"

# Build product service image
echo "Building product service image..."
docker build \
    -f Dockerfile.product \
    -t ${IMAGE_NAME}-product:${TAG} \
    .

# Build user service image
echo "Building user service image..."
docker build \
    -f Dockerfile.user \
    -t ${IMAGE_NAME}-user:${TAG} \
    .

echo "Build complete!"

# List the built images
echo -e "\nBuilt images:"
docker images | grep microservices 