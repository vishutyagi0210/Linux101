#!/bin/bash
# Create a simple HTML file for static serving
mkdir -p /var/www/html
cat > /var/www/html/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Nginx!</title>
</head>
<body>
    <h1>Success! Nginx is serving static files.</h1>
    <p>If you see this page, the web server is working correctly.</p>
</body>
</html>
EOF

export PROMPT_COMMAND='history -a'
clear
echo "Static file created at /var/www/html/index.html"
