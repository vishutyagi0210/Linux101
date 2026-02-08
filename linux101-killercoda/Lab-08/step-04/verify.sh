#!/bin/bash
# Verify the user ran 'ls -l notes.txt' at least twice AND 'touch notes.txt'

count_ls=$(grep -c "ls -l notes.txt" ~/.bash_history)
count_touch=$(grep -c "touch notes.txt" ~/.bash_history)

if [ "$count_ls" -ge 2 ] && [ "$count_touch" -ge 1 ]; then
    exit 0
else
    exit 1
fi