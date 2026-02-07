#!/bin/bash
sleep 0.5
history -a
grep -q "whoami" /root/.bash_history && exit 0 || exit 1