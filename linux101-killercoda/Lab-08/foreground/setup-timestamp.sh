#!/bin/bash
# Create the file with an old timestamp so the update is visible
touch -d "2 hours ago" notes.txt
export PROMPT_COMMAND='history -a'
clear
