#!/bin/bash
# Check if custom 404 page is configured and working
if [ -f /var/www/html/404.html ] && curl -s -H "Host: shop.local" http://localhost/nonexistent-page | grep -q "Oops"; then
    exit 0
else
    exit 1
fi

