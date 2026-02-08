#!/bin/bash
grep -q "ls /nonexistent" ~/.bash_history && exit 0 || exit 1
