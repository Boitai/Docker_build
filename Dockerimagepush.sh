#!/bin/bash

# Checkout code
git clone https://github.com/Boitai/Docker_build.git

#Login to Docker Hub
docker login -u boitai -p password
# Biuld Docker Image
docker buildx build --platform linux/amd64,linux/arm64 -t boitai/buildadttest_1:latest

# Push Docker Image
docker push boitai/buildadttest_1:latest
