#!/bin/bash
# Check if access control is configured
if [ -d /var/www/html/admin ] && curl -s http://localhost/admin/ | grep -q "Admin Panel"; then
    exit 0
else
    exit 1
fi
