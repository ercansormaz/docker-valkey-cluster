#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 -f 7.2/Dockerfile --push -t ercansormaz/valkey-cluster:7.2 -t ercansormaz/valkey-cluster:7.2.13 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.0/Dockerfile --push -t ercansormaz/valkey-cluster:8.0 -t ercansormaz/valkey-cluster:8.0.9 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.1/Dockerfile --push -t ercansormaz/valkey-cluster:8.1 -t ercansormaz/valkey-cluster:8.1.8 .
docker buildx build --platform linux/amd64,linux/arm64 -f 9.0/Dockerfile --push -t ercansormaz/valkey-cluster:9.0 -t ercansormaz/valkey-cluster:9.0.4 .
docker buildx build --platform linux/amd64,linux/arm64 -f 9.1/Dockerfile --push -t ercansormaz/valkey-cluster:9.1 -t ercansormaz/valkey-cluster:9.1.0 -t ercansormaz/valkey-cluster:latest .
docker buildx build --platform linux/amd64,linux/arm64 -f unstable/Dockerfile --push -t ercansormaz/valkey-cluster:unstable .
