#!/bin/bash
if [ -d "$HOME/project/src/logs" ]; then
    exit 0
else
    exit 1
fi
