#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 -f 6.2/Dockerfile --push -t ercansormaz/redis-cluster:6.2.21 -t ercansormaz/redis-cluster:6.2 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.2/Dockerfile --push -t ercansormaz/redis-cluster:7.2.13 -t ercansormaz/redis-cluster:7.2 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.4/Dockerfile --push -t ercansormaz/redis-cluster:7.4.8 -t ercansormaz/redis-cluster:7.4 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.0/Dockerfile --push -t ercansormaz/redis-cluster:8.0.6 -t ercansormaz/redis-cluster:8.0 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.2/Dockerfile --push -t ercansormaz/redis-cluster:8.2.5 -t ercansormaz/redis-cluster:8.2 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.4/Dockerfile --push -t ercansormaz/redis-cluster:8.4.2 -t ercansormaz/redis-cluster:8.4 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.6/Dockerfile --push -t ercansormaz/redis-cluster:8.6.2 -t ercansormaz/redis-cluster:8.6 -t ercansormaz/redis-cluster:latest .
