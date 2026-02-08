#!/bin/bash
if [ -f "$HOME/welcome.txt" ] && grep -q 'Hello Linux' "$HOME/welcome.txt" && grep -q 'I am learning' "$HOME/welcome.txt"; then
    exit 0
else
    exit 1
fi
