#!/bin/bash
set -e

echo "Starting Valkey Cluster..."

/usr/local/bin/create-cluster start

if [ ! -f /data/.cluster_created ]; then
    echo "First boot detected. Waiting for Valkey nodes to respond..."
    
    until redis-cli -p 30001 ping > /dev/null 2>&1; do
        sleep 1
    done

    echo "Initializing Valkey Cluster automatically..."
    echo "yes" | /usr/local/bin/create-cluster create
    touch /data/.cluster_created
    echo "Valkey Cluster created successfully!"
fi

tail -f /dev/null