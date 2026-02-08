#!/bin/bash
grep -q "ls -l /etc/passwd" ~/.bash_history && exit 0 || exit 1
