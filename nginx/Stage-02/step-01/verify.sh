#!/bin/bash
# Check if virtual host is configured and working
if [ -f /etc/nginx/sites-enabled/shop.local ] && curl -s -H "Host: shop.local" http://localhost | grep -q "shop.local"; then
    exit 0
else
    exit 1
fi
