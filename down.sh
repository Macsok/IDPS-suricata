#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Change to the directory containing the docker-compose.yml
cd "$SCRIPT_DIR"

# Stop the containers
docker-compose down

# Archive and clear the logs directory
echo "Clearing Suricata logs..."
mv ./shared/logs/* ./shared/old_logs/
rm -rf ./shared/logs/*

echo "Containers stopped and logs cleared."
