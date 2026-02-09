#!/bin/bash
# Check if user accessed the backend
if grep -q "curl http://127.0.0.1:8080" ~/.bash_history; then
    exit 0
else
    exit 1
fi
