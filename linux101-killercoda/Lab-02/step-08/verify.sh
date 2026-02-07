#!/bin/bash
history -a
sleep 0.5
grep -q "ls /etc" /root/.bash_history && exit 0 || exit 1