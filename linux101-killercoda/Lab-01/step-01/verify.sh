#!/bin/bash
history -a
sleep 0.5
# Check bash history file (try both locations)
if grep "echo" ~/.bash_history 2>/dev/null | grep "hello" | grep "linux" > /dev/null 2>&1; then
    exit 0
fi

if grep "echo" /root/.bash_history 2>/dev/null | grep "hello" | grep "linux" > /dev/null 2>&1; then
    exit 0
fi

exit 1