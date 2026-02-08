#!/bin/bash
grep -q "ls -lh" ~/.bash_history && exit 0 || exit 1
