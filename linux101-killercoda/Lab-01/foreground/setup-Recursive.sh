#!/bin/bash
mkdir -p project/{src,assets,docs}
touch project/src/main.c
touch project/assets/logo.png
touch project/docs/readme.txt
export PROMPT_COMMAND='history -a'
clear
