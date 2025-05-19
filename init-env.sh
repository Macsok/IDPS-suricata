#!/bin/bash

echo "PUID=$(id -u)" > .env
echo "PGID=$(id -g)" >> .env