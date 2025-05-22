#!/bin/bash
set -e

# Get all running container IDs
containerid=$(docker ps -q)

# Check if there are any running containers before attempting removal
if [ -n "$containerid" ]; then
    docker rm -f $containerid
    echo "Removed running containers: $containerid"
else
    echo "No running containers found."
fi