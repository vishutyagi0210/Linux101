#!/bin/bash
# Start a simple Python HTTP server as backend on port 8080
cat > /tmp/backend.py << 'EOF'
from http.server import HTTPServer, BaseHTTPRequestHandler
import json

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'application/json')
        self.end_headers()
        response = {
            "message": "Hello from backend",
            "path": self.path,
            "headers": dict(self.headers)
        }
        self.wfile.write(json.dumps(response, indent=2).encode())
    
    def log_message(self, format, *args):
        pass  # Suppress logs

httpd = HTTPServer(('127.0.0.1', 8080), Handler)
print("Backend server running on port 8080")
httpd.serve_forever()
EOF

# Start backend in background
nohup python3 /tmp/backend.py > /dev/null 2>&1 &

export PROMPT_COMMAND='history -a'
clear
echo "Backend server started on http://127.0.0.1:8080"
echo "Test it: curl http://127.0.0.1:8080"
