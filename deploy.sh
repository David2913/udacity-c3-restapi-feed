#!/bin/bash
set -ev

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [ "$BUILD_ENV" == "production" ]; then
  echo "Deploying production image: dzarate/udacity-c3-restapi-feed:latest"
  docker push dzarate/udacity-c3-restapi-feed:latest
else
  echo "Deploying development image: ddzarate/udacity-c3-restapi-feed:latest-dev"
  docker push dzarate/udacity-c3-restapi-feed:latest-dev
fi
