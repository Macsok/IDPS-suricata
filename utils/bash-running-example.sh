#!/bin/bash

# CONFIGURATION
CONTAINER_NAME="suricata"
IMAGE="jasonish/suricata:latest"
INTERFACE="eth1"

# VOLUME PATHS
CONFIG_DIR="$(pwd)/shared/etc"
LOG_DIR="$(pwd)/shared/logs"
DATA_DIR="$(pwd)/shared/data"

# Create directories if don't exists
#mkdir -p "$CONFIG_DIR" "$LOG_DIR" "$DATA_DIR"

# Running parameters
docker run --rm -d --name "$CONTAINER_NAME" --net=host \
  --cap-add=NET_ADMIN --cap-add=NET_RAW --cap-add=SYS_NICE \
  -e PUID=$(id -u) -e PGID=$(id -g) \
  -v "$CONFIG_DIR:/etc/suricata" \
  -v "$LOG_DIR:/var/log/suricata" \
  -v "$DATA_DIR:/var/lib/suricata" \
  "$IMAGE" -i "$INTERFACE"
