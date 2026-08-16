#!/bin/bash
TARGET_DIR="/usr/share/nginx/html"

echo "Checking if deployment directory exists..."
if [ -d "$TARGET_DIR" ]; then
    echo "Cleaning up existing files in $TARGET_DIR..."
    # Safely clear the folder contents without breaking on empty directories
    rm -rf ${TARGET_DIR}/*
else
    echo "Directory does not exist. Creating path..."
    mkdir -p "$TARGET_DIR"
fi
