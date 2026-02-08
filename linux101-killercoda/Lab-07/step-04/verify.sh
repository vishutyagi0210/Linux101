#!/bin/bash
grep -q 'ls /etc | head -n 5' ~/.bash_history && exit 0 || exit 1
