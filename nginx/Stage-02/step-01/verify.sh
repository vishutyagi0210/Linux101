#!/bin/bash
# Check if virtual host is configured and working
if [ -f /etc/nginx/sites-enabled/example.local ] && curl -s -H "Host: example.local" http://localhost | grep -q "example.local"; then
    exit 0
else
    exit 1
fi
