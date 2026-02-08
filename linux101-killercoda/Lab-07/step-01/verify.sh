#!/bin/bash
# Check current directory OR home directory
if [ -f "$HOME/welcome.txt" ] && grep -q "Hello Linux" "$HOME/welcome.txt"; then
    exit 0
else
    exit 1
fi
