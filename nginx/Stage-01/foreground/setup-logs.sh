#!/bin/bash
# Generate realistic log entries for analysis practice

# Create access log with patterns
cat > /var/log/nginx/access.log << 'EOF'
192.168.1.10 - - [09/Feb/2026:07:00:01 +0000] "GET / HTTP/1.1" 200 612 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
192.168.1.10 - - [09/Feb/2026:07:00:02 +0000] "GET /about HTTP/1.1" 200 1024 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
192.168.1.11 - - [09/Feb/2026:07:00:03 +0000] "GET /contact HTTP/1.1" 200 512 "-" "Mozilla/5.0 (Linux; Android 13)"
192.168.1.10 - - [09/Feb/2026:07:00:04 +0000] "GET /nonexistent HTTP/1.1" 404 162 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
185.220.101.1 - - [09/Feb/2026:07:00:05 +0000] "GET / HTTP/1.1" 200 612 "-" "python-requests/2.28"
185.220.101.1 - - [09/Feb/2026:07:00:06 +0000] "GET / HTTP/1.1" 200 612 "-" "python-requests/2.28"
185.220.101.1 - - [09/Feb/2026:07:00:07 +0000] "GET / HTTP/1.1" 200 612 "-" "python-requests/2.28"
192.168.1.10 - - [09/Feb/2026:07:00:08 +0000] "GET /api/data HTTP/1.1" 502 166 "-" "curl/7.81.0"
EOF

# Create error log with sample errors
cat > /var/log/nginx/error.log << 'EOF'
2026/02/09 07:00:04 [error] 1234#1234: *1 open() "/var/www/html/nonexistent" failed (2: No such file or directory), client: 192.168.1.10, server: _, request: "GET /nonexistent HTTP/1.1", host: "localhost"
2026/02/09 07:00:08 [error] 1234#1234: *2 connect() failed (111: Connection refused) while connecting to upstream, client: 192.168.1.10, server: _, request: "GET /api/data HTTP/1.1", upstream: "http://127.0.0.1:8080/data", host: "localhost"
EOF

export PROMPT_COMMAND='history -a'
clear
echo "Sample logs created for analysis practice"
echo "Access log: /var/log/nginx/access.log"
echo "Error log: /var/log/nginx/error.log"
