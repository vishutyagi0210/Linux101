#!/bin/bash
grep -q "ls -l" ~/.bash_history && exit 0 || exit 1
