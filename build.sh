#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 -f 6.2/Dockerfile --push -t ercansormaz/redis-cluster:6.2 -t ercansormaz/redis-cluster:6.2.22 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.2/Dockerfile --push -t ercansormaz/redis-cluster:7.2 -t ercansormaz/redis-cluster:7.2.14 .
docker buildx build --platform linux/amd64,linux/arm64 -f 7.4/Dockerfile --push -t ercansormaz/redis-cluster:7.4 -t ercansormaz/redis-cluster:7.4.9 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.0/Dockerfile --push -t ercansormaz/redis-cluster:8.0 -t ercansormaz/redis-cluster:8.0.6 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.2/Dockerfile --push -t ercansormaz/redis-cluster:8.2 -t ercansormaz/redis-cluster:8.2.7 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.4/Dockerfile --push -t ercansormaz/redis-cluster:8.4 -t ercansormaz/redis-cluster:8.4.4 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.6/Dockerfile --push -t ercansormaz/redis-cluster:8.6 -t ercansormaz/redis-cluster:8.6.4 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.8/Dockerfile --push -t ercansormaz/redis-cluster:8.8 -t ercansormaz/redis-cluster:8.8.0 -t ercansormaz/redis-cluster:latest .
