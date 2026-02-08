#!/bin/bash
# Check if the long command appears at least twice
count=$(grep -c 'echo "This is a very long command that I do not want to type again"' ~/.bash_history)
if [ "$count" -ge 2 ]; then
    exit 0
else
    exit 1
fi
