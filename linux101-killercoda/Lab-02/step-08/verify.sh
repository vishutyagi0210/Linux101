#!/bin/bash
grep -q "ls /etc" ~/.bash_history && exit 0 || exit 1