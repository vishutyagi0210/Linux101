#!/bin/bash
# Check if proxy is configured and working
if curl -s http://localhost/api/ | grep -q "Hello from backend"; then
    exit 0
else
    exit 1
fi
