#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 -f 6.2/Dockerfile --push -t ercansormaz/redis-cluster:6.2.21 -t ercansormaz/redis-cluster:6.2 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.2/Dockerfile --push -t ercansormaz/redis-cluster:7.2.12 -t ercansormaz/redis-cluster:7.2 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.4/Dockerfile --push -t ercansormaz/redis-cluster:7.4.7 -t ercansormaz/redis-cluster:7.4 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.0/Dockerfile --push -t ercansormaz/redis-cluster:8.0.5 -t ercansormaz/redis-cluster:8.0 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.2/Dockerfile --push -t ercansormaz/redis-cluster:8.2.3 -t ercansormaz/redis-cluster:8.2 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.4/Dockerfile --push -t ercansormaz/redis-cluster:8.4.1 -t ercansormaz/redis-cluster:8.4 .
docker buildx build --platform linux/amd64,linux/arm64 --push -t ercansormaz/redis-cluster:8.6.0 -t ercansormaz/redis-cluster:8.6 -t ercansormaz/redis-cluster:latest .
