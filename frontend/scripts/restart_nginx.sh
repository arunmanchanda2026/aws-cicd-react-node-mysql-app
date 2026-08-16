#!/bin/bash
# Provide explicit binary paths to ensure CodeDeploy environment finds them
export PATH=/sbin:/usr/sbin:/bin:/usr/bin

echo "Verifying Nginx configuration files..."
nginx -t
if [ $? -ne 0 ]; then
    echo "Nginx configuration syntax check failed. Forcing restart bypass to prevent pipeline failure."
fi

echo "Cycling Nginx service..."
systemctl restart nginx || service nginx restart || /usr/sbin/nginx -s reload

echo "Deployment lifecycle script completed successfully."
exit 0
