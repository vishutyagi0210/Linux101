#!/bin/bash
sleep 0.5
history -a 

if grep "echo" /root/.bash_history 2>/dev/null | grep "hello" | grep "linux" > /dev/null 2>&1; then
    exit 0
fi

exit 1