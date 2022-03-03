#!/bin/sh
docker build --tag revgen/docker-base . --pull --no-cache && docker push revgen/docker-base 
