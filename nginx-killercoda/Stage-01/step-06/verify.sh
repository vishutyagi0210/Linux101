#!/bin/bash
# Check if user analyzed logs with grep and awk
if grep -q "grep.*404.*access.log" ~/.bash_history && grep -q "awk.*access.log" ~/.bash_history; then
    exit 0
else
    exit 1
fi
