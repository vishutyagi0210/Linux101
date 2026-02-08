#!/bin/bash
# Try to install tree if missing, suppressing output
echo "Wait checking the sofware and installing if needed"
dpkg -s tree &> /dev/null || (sudo apt-get update -qq && sudo apt-get install -y tree -qq)
export PROMPT_COMMAND='history -a'
clear

