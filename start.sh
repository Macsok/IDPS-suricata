#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Change to the directory containing the docker-compose.yml
cd "$SCRIPT_DIR"

# Run the initialization script to set environment variables
echo "Initializing environment variables..."
./init-env.sh

# Start the containers in detached mode
echo "Starting containers..."
docker-compose up -d

echo "Containers started successfully."