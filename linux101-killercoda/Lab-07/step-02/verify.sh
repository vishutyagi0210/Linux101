#!/bin/bash
# Verify the file has BOTH lines:
# 1. "Hello Linux" (from step 1)
# 2. "I am learning" (from step 2)

if [ -f /home/ubuntu/welcome.txt ] && grep -q 'Hello Linux' /home/ubuntu/welcome.txt && grep -q 'I am learning' /home/ubuntu/welcome.txt; then
    exit 0
else
    exit 1
fi
