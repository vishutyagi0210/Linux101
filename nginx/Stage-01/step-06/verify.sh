#!/bin/bash
# Check if user viewed both log files
if grep -q "tail.*access.log" ~/.bash_history && grep -q "tail.*error.log" ~/.bash_history; then
    exit 0
else
    exit 1
fi
