#!/bin/bash
history -a
sleep 0.5
grep -q "ls /" ~/.bash_history && exit 0 || exit 1