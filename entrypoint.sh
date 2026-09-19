#!/bin/bash
set -e

echo "Starting Redis Cluster..."

/usr/local/bin/create-cluster start

if [ ! -f /data/.cluster_created ]; then
    echo "First boot detected. Waiting for Redis nodes to respond..."
    
    until redis-cli -p 30001 ping > /dev/null 2>&1; do
        sleep 1
    done

    echo "Initializing Redis Cluster automatically..."
    echo "yes" | /usr/local/bin/create-cluster create
    touch /data/.cluster_created
    echo "Redis Cluster created successfully!"
fi

tail -f /dev/null