#!/bin/bash
set -e

# Stop and remove existing Docker container (if any) using port 8080
existing_container=$(docker ps -q -f "ancestor=pramod858/todo-app" -f "expose=8080")

if [ -n "$existing_container" ]; then
    echo "Stopping and removing existing Docker container..."
    docker stop "$existing_container"
    docker rm "$existing_container"
fi


