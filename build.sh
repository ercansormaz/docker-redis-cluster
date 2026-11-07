#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 -f 6.2/Dockerfile --push -t ercansormaz/redis-cluster:6.2 -t ercansormaz/redis-cluster:6.2.24 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.2/Dockerfile --push -t ercansormaz/redis-cluster:7.2 -t ercansormaz/redis-cluster:7.2.17 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.4/Dockerfile --push -t ercansormaz/redis-cluster:7.4 -t ercansormaz/redis-cluster:7.4.12 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.2/Dockerfile --push -t ercansormaz/redis-cluster:8.2 -t ercansormaz/redis-cluster:8.2.11 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.4/Dockerfile --push -t ercansormaz/redis-cluster:8.4 -t ercansormaz/redis-cluster:8.4.8 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.6/Dockerfile --push -t ercansormaz/redis-cluster:8.6 -t ercansormaz/redis-cluster:8.6.8 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.8/Dockerfile --push -t ercansormaz/redis-cluster:8.8 -t ercansormaz/redis-cluster:8.8.4 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.10/Dockerfile --push -t ercansormaz/redis-cluster:8.10 -t ercansormaz/redis-cluster:8.10.3 -t ercansormaz/redis-cluster:latest .
