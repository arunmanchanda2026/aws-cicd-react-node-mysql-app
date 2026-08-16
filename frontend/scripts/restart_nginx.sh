#!/bin/bash
echo "Checking if Nginx is installed..."
if ! command -v nginx &> /dev/null; then
    echo "Nginx not found. Installing Nginx..."
    # For Ubuntu/Debian instances:
    apt-get update -y && apt-get install nginx -y
    # For Amazon Linux/RHEL instances (uncomment below if using Amazon Linux):
    # dnf install nginx -y || yum install nginx -y
fi

echo "Verifying Nginx service status..."
systemctl restart nginx
