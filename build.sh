#!/usr/bin/env bash

./install.sh

DOCKER_REGISTRY=docker.io

DOCKER_REGISTRY_NAMESPACE=cyotee

DOCKER_IMAGE_NAME=jbpm

DOCKER_IMAGE_VERSION=latest

echo "Building Docker Image with command docker build -t ${DOCKER_REGISTRY}/${DOCKER_REGISTRY_NAMESPACE}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} ."
docker build --force-rm=true --rm=true -t ${DOCKER_REGISTRY}/${DOCKER_REGISTRY_NAMESPACE}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .
echo =========================================================================
echo Docker image is ready.  Try it out by running:
echo     docker run --rm -ti -P ${DOCKER_IMAGE_NAME}
echo =========================================================================