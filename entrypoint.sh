#!/bin/bash
set -e

echo "Starting Redis Cluster..."

/usr/local/bin/create-cluster start

tail -f /dev/null