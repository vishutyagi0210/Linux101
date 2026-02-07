#!/bin/bash
grep -q "uname -r" ~/.bash_history && exit 0 || exit 1
