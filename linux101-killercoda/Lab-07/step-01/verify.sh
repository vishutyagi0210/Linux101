#!/bin/bash
if [ -f /home/ubuntu/welcome.txt ] && grep -q 'Hello Linux' /home/ubuntu/welcome.txt; then
    exit 0
else
    exit 1
fi
