#!/bin/bash
# Check if user viewed the nginx.conf file
if grep -q "cat /etc/nginx/nginx.conf" ~/.bash_history; then
    exit 0
else
    exit 1
fi
