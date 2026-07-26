#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 -f 6.2/Dockerfile --push -t ercansormaz/redis-cluster:6.2 -t ercansormaz/redis-cluster:6.2.23 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.2/Dockerfile --push -t ercansormaz/redis-cluster:7.2 -t ercansormaz/redis-cluster:7.2.15 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.4/Dockerfile --push -t ercansormaz/redis-cluster:7.4 -t ercansormaz/redis-cluster:7.4.10 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.2/Dockerfile --push -t ercansormaz/redis-cluster:8.2 -t ercansormaz/redis-cluster:8.2.8 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.4/Dockerfile --push -t ercansormaz/redis-cluster:8.4 -t ercansormaz/redis-cluster:8.4.5 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.6/Dockerfile --push -t ercansormaz/redis-cluster:8.6 -t ercansormaz/redis-cluster:8.6.5 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.8/Dockerfile --push -t ercansormaz/redis-cluster:8.8 -t ercansormaz/redis-cluster:8.8.1 -t ercansormaz/redis-cluster:latest .
