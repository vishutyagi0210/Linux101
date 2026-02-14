#!/bin/bash
# Check if config test passes (meaning they fixed it)
if sudo nginx -t 2>&1 | grep -q "syntax is ok"; then
    exit 0
else
    exit 1
fi
