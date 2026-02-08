#!/bin/bash
# Check if "echo history mark" appears at least three times now
count=$(grep -c 'echo "history mark"' ~/.bash_history)
if [ "$count" -ge 3 ]; then
    exit 0
else
    exit 1
fi
