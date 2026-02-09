#!/bin/bash
# Install and start Nginx
apt update -qq
apt install -y nginx

# Start Nginx service
systemctl start nginx
systemctl enable nginx

export PROMPT_COMMAND='history -a'
clear
echo "Nginx Web Server Basics - Ready!"
echo "Nginx is installed and running"
