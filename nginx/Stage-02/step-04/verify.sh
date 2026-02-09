#!/bin/bash
# Check if security headers are present
if curl -sI http://localhost | grep -q "X-Frame-Options" && curl -sI http://localhost | grep -q "X-Content-Type-Options"; then
    exit 0
else
    exit 1
fi
