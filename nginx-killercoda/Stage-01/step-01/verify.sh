#!/bin/bash
# Check if Nginx is installed and running
if command -v nginx &> /dev/null && systemctl is-active --quiet nginx; then
    exit 0
else
    exit 1
fi
