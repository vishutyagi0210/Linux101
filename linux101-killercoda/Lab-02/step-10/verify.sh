#!/bin/bash
history -a
grep -q "ls /boot" /root/.bash_history && exit 0 || exit 1