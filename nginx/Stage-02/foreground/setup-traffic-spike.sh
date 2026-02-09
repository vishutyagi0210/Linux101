#!/bin/bash
# Generate realistic traffic spike scenario - Production-grade data
# Scenario: E-commerce site, normal traffic until 10:00 AM, then massive spike

cat > /var/log/nginx/access.log << 'EOF'
# Normal traffic pattern (09:00 - 09:59)
192.168.1.45 - - [30/Dec/2025:09:12:03 +0000] "GET / HTTP/1.1" 200 2048 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
192.168.1.67 - - [30/Dec/2025:09:15:22 +0000] "GET /products HTTP/1.1" 200 3421 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)"
192.168.1.89 - - [30/Dec/2025:09:18:45 +0000] "GET /cart HTTP/1.1" 200 1567 "-" "Mozilla/5.0 (Linux; Android 13; SM-G998B)"
192.168.1.45 - - [30/Dec/2025:09:22:11 +0000] "GET /checkout HTTP/1.1" 200 2890 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
192.168.1.102 - - [30/Dec/2025:09:28:33 +0000] "GET /about HTTP/1.1" 200 1234 "-" "Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X)"
192.168.1.67 - - [30/Dec/2025:09:35:56 +0000] "GET /contact HTTP/1.1" 200 987 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)"
192.168.1.120 - - [30/Dec/2025:09:42:18 +0000] "GET /products/laptop HTTP/1.1" 200 4521 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36"
192.168.1.89 - - [30/Dec/2025:09:48:40 +0000] "GET /products/phone HTTP/1.1" 200 3987 "-" "Mozilla/5.0 (Linux; Android 13; SM-G998B)"
192.168.1.45 - - [30/Dec/2025:09:55:02 +0000] "GET /blog HTTP/1.1" 200 2134 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

# SPIKE BEGINS - 10:00 AM (Bot attack pattern)
185.220.101.42 - - [30/Dec/2025:10:00:01 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
185.220.101.42 - - [30/Dec/2025:10:00:02 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
185.220.101.42 - - [30/Dec/2025:10:00:03 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
185.220.101.42 - - [30/Dec/2025:10:00:04 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
185.220.101.42 - - [30/Dec/2025:10:00:05 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
45.148.10.88 - - [30/Dec/2025:10:00:06 +0000] "GET / HTTP/1.1" 200 2048 "-" "curl/7.81.0"
45.148.10.88 - - [30/Dec/2025:10:00:07 +0000] "GET / HTTP/1.1" 200 2048 "-" "curl/7.81.0"
45.148.10.88 - - [30/Dec/2025:10:00:08 +0000] "GET / HTTP/1.1" 200 2048 "-" "curl/7.81.0"
91.203.5.146 - - [30/Dec/2025:10:00:09 +0000] "GET / HTTP/1.1" 200 2048 "-" "-"
91.203.5.146 - - [30/Dec/2025:10:00:10 +0000] "GET / HTTP/1.1" 200 2048 "-" "-"
91.203.5.146 - - [30/Dec/2025:10:00:11 +0000] "GET / HTTP/1.1" 200 2048 "-" "-"
185.220.101.42 - - [30/Dec/2025:10:00:12 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
185.220.101.42 - - [30/Dec/2025:10:00:13 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
45.148.10.88 - - [30/Dec/2025:10:00:14 +0000] "GET / HTTP/1.1" 200 2048 "-" "curl/7.81.0"
91.203.5.146 - - [30/Dec/2025:10:00:15 +0000] "GET / HTTP/1.1" 200 2048 "-" "-"
185.220.101.42 - - [30/Dec/2025:10:00:16 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
185.220.101.42 - - [30/Dec/2025:10:00:17 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
45.148.10.88 - - [30/Dec/2025:10:00:18 +0000] "GET / HTTP/1.1" 200 2048 "-" "curl/7.81.0"
91.203.5.146 - - [30/Dec/2025:10:00:19 +0000] "GET / HTTP/1.1" 200 2048 "-" "-"
185.220.101.42 - - [30/Dec/2025:10:00:20 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"

# Legitimate traffic mixed in
192.168.1.45 - - [30/Dec/2025:10:00:25 +0000] "GET /products HTTP/1.1" 200 3421 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

# More bot traffic
185.220.101.42 - - [30/Dec/2025:10:00:30 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
185.220.101.42 - - [30/Dec/2025:10:00:31 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"
45.148.10.88 - - [30/Dec/2025:10:00:32 +0000] "GET / HTTP/1.1" 200 2048 "-" "curl/7.81.0"
91.203.5.146 - - [30/Dec/2025:10:00:33 +0000] "GET / HTTP/1.1" 200 2048 "-" "-"
185.220.101.42 - - [30/Dec/2025:10:00:34 +0000] "GET / HTTP/1.1" 200 2048 "-" "python-requests/2.28.1"

# Traffic returns to normal after 10:01
192.168.1.67 - - [30/Dec/2025:10:05:12 +0000] "GET /products HTTP/1.1" 200 3421 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)"
192.168.1.89 - - [30/Dec/2025:10:12:45 +0000] "GET /cart HTTP/1.1" 200 1567 "-" "Mozilla/5.0 (Linux; Android 13; SM-G998B)"
192.168.1.120 - - [30/Dec/2025:10:18:33 +0000] "GET /checkout HTTP/1.1" 200 2890 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36"
EOF

export PROMPT_COMMAND='history -a'
clear
echo "🚨 INCIDENT ALERT 🚨"
echo ""
echo "Google Analytics reports a traffic spike on 30/Dec/2025 at 10:00 AM"
echo "Normal traffic: ~10 requests/hour"
echo "Spike traffic: ~1200 requests/hour"
echo ""
echo "Your mission: Investigate if this is legitimate or an attack"
echo ""
echo "Access log: /var/log/nginx/access.log"
echo ""
echo "Use your engineering skills to analyze the data!"
