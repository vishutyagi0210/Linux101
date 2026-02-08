#!/bin/bash
grep -q 'ls *.txt' ~/.bash_history && exit 0 || exit 1
