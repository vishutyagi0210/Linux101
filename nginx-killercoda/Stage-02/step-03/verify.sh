#!/bin/bash
# Check if autoindex is enabled and working
if curl -s http://localhost/downloads/ | grep -q "manual.pdf"; then
    exit 0
else
    exit 1
fi
