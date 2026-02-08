#!/bin/bash
# Check current directory OR home directory
if [ -f "welcome.txt" ] && grep -q "Hello Linux" "welcome.txt"; then
    exit 0
elif [ -f "$HOME/welcome.txt" ] && grep -q "Hello Linux" "$HOME/welcome.txt"; then
    exit 0
elif [ -f "/home/ubuntu/welcome.txt" ] && grep -q "Hello Linux" "/home/ubuntu/welcome.txt"; then
    exit 0
else
    exit 1
fi
