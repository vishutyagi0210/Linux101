#!/bin/bash
# Check if basic auth is configured
if [ -f /etc/nginx/.htpasswd ] && [ -d /var/www/html/secure ]; then
    # Test that auth is required (should get 401)
    status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost/secure/)
    if [ "$status" = "401" ]; then
        exit 0
    fi
fi
exit 1
