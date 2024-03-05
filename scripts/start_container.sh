#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull pramod858/todo-app:latest

# Run the Docker image as a container
docker run -d -p 8080:8080 pramod858/todo-app:latest
