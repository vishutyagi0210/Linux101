#!/bin/bash
# Create three broken scenarios for troubleshooting

# Scenario 1: 404 - File doesn't exist
mkdir -p /var/www/html
echo "<h1>Welcome</h1>" > /var/www/html/index.html

# Scenario 2: 502 - Backend not running (we'll configure proxy but no backend)
cat > /etc/nginx/sites-available/api << 'EOF'
server {
    listen 8081;
    location / {
        proxy_pass http://127.0.0.1:9999;  # Nothing running on 9999
    }
}
EOF
ln -sf /etc/nginx/sites-available/api /etc/nginx/sites-enabled/

# Scenario 3: 503 - Permissions issue
mkdir -p /var/www/restricted
echo "<h1>Secret</h1>" > /var/www/restricted/index.html
chmod 000 /var/www/restricted/index.html  # No permissions

cat > /etc/nginx/sites-available/restricted << 'EOF'
server {
    listen 8082;
    root /var/www/restricted;
    index index.html;
}
EOF
ln -sf /etc/nginx/sites-available/restricted /etc/nginx/sites-enabled/

# Reload nginx
nginx -t && systemctl reload nginx

export PROMPT_COMMAND='history -a'
clear
echo "🚨 Three broken scenarios created:"
echo "1. 404 scenario: curl http://localhost/missing.html"
echo "2. 502 scenario: curl http://localhost:8081/"
echo "3. 503 scenario: curl http://localhost:8082/"
echo ""
echo "Your mission: Identify and fix each issue!"
