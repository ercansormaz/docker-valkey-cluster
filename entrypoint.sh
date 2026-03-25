#!/bin/bash
set -e

echo "Starting Valkey Cluster..."

/usr/local/bin/create-cluster start

tail -f /dev/null