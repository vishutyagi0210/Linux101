#!/bin/bash
# Check if "echo repeat me" appears at least twice in history
count=$(grep -c "echo \"repeat me\"" ~/.bash_history)
if [ "$count" -ge 2 ]; then
    exit 0
else
    exit 1
fi
