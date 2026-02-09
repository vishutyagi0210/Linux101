#!/bin/bash
# Create a broken config file for testing
cat > /etc/nginx/conf.d/broken.conf << 'EOF'
server {
    listen 8080
    server_name example.com;
    root /var/www/html;
}
EOF

export PROMPT_COMMAND='history -a'
clear
echo "Broken config created at /etc/nginx/conf.d/broken.conf"
echo "Hint: There's a syntax error. Use 'nginx -t' to find it!"
