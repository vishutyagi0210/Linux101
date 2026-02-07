#!/bin/bash
history -a
if grep "echo" ~/.bash_history | grep "hello" | grep "linux" > /dev/null 2>&1; then
    exit 0
fi
exit 1