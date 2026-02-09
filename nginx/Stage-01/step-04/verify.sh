#!/bin/bash
# Check if user ran curl to localhost
if grep -q "curl http://localhost" ~/.bash_history && curl -s http://localhost | grep -q "Success"; then
    exit 0
else
    exit 1
fi
