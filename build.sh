#!/bin/bash

docker buildx build --platform linux/amd64,linux/arm64 -f 7.2/Dockerfile --push -t ercansormaz/valkey-cluster:7.2.12 -t ercansormaz/valkey-cluster:7.2 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.0/Dockerfile --push -t ercansormaz/valkey-cluster:8.0.7 -t ercansormaz/valkey-cluster:8.0 .
docker buildx build --platform linux/amd64,linux/arm64 -f 8.1/Dockerfile --push -t ercansormaz/valkey-cluster:8.1.6 -t ercansormaz/valkey-cluster:8.1 .
docker buildx build --platform linux/amd64,linux/arm64 -f 9.0/Dockerfile --push -t ercansormaz/valkey-cluster:9.0.3 -t ercansormaz/valkey-cluster:9.0 -t ercansormaz/valkey-cluster:latest .
docker buildx build --platform linux/amd64,linux/arm64 -f 9.1-rc1/Dockerfile --push -t ercansormaz/valkey-cluster:9.1.0-rc1 -t ercansormaz/valkey-cluster:9.1-rc1 .
