#!/bin/bash
# Check if "echo history mark" appears at least twice
count=$(grep -c "echo \"history mark\"" ~/.bash_history)
if [ "$count" -ge 2 ]; then
    exit 0
else
    exit 1
fi
