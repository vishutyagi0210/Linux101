#!/bin/bash
if [ -d "$HOME/workspace" ]; then
    exit 0
else
    exit 1
fi
