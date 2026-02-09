#!/bin/bash
# Check if custom 404 page is configured and working
if [ -f /var/www/html/404.html ] && curl -s http://localhost/nonexistent | grep -q "Page Not Found"; then
    exit 0
else
    exit 1
fi
