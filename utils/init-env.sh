#!/bin/bash

ENV_FILE="$(pwd)/.env"

echo "PUID=$(id -u)" > "$ENV_FILE"
echo "PGID=$(id -g)" >> "$ENV_FILE"