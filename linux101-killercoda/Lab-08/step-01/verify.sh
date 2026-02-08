#!/bin/bash
if [ -f "$HOME/ghost.txt" ]; then
    exit 0
else
    exit 1
fi
