#!/bin/bash
# Check if virtual host is configured and working

# Check if config file exists
if [ ! -f /etc/nginx/sites-available/shop.local ]; then
    echo "Error: /etc/nginx/sites-available/shop.local not found"
    exit 1
fi

# Check if symlink exists
if [ ! -L /etc/nginx/sites-enabled/shop.local ]; then
    echo "Error: /etc/nginx/sites-enabled/shop.local symlink not found"
    exit 1
fi

# Check if index.html exists
if [ ! -f /var/www/shop.local/index.html ]; then
    echo "Error: /var/www/shop.local/index.html not found"
    exit 1
fi

# Check if virtual host is serving correct content
response=$(curl -s -H "Host: shop.local" http://localhost)
if echo "$response" | grep -q "Welcome to Shop"; then
    exit 0
else
    echo "Error: Virtual host not serving correct content"
    echo "Got default Nginx page instead of shop.local content"
    echo "Hint: Make sure you reloaded nginx after creating the config"
    exit 1
fi


