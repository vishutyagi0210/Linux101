#!/bin/bash
history -a
grep -q "ls /boot" ~/.bash_history && exit 0 || exit 1