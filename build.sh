#!/bin/bash
set -ev

if [ "$BUILD_ENV" == "production" ]; then
  echo "Building production image: dzarate/udacity-c3-restapi-feed:latest"
  docker build -t dzarate/udacity-c3-restapi-feed:latest .
else
  echo "Building development image: dzarate/udacity-c3-restapi-feed:latest-dev"
  docker build -t dzarate/udacity-c3-restapi-feed:latest-dev .
fi
