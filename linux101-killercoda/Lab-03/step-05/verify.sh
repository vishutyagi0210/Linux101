#!/bin/bash
grep -q "ls -R" ~/.bash_history && exit 0 || exit 1
