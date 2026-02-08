#!/bin/bash
grep -q 'sort < welcome.txt' ~/.bash_history && exit 0 || exit 1
