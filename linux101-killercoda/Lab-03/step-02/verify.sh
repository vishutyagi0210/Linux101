#!/bin/bash
grep -q "ls -a" ~/.bash_history && exit 0 || exit 1
