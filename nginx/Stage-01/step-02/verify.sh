#!/bin/bash
# Check if user ran ps aux | grep nginx
if grep -q "ps aux | grep nginx" ~/.bash_history; then
    exit 0
else
    exit 1
fi
