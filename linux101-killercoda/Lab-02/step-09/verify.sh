#!/bin/bash
grep -q "ls /var" ~/.bash_history && exit 0 || exit 1