#!/bin/bash
grep -q "ls /home" ~/.bash_history && exit 0 || exit 1
