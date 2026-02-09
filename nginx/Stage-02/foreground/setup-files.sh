#!/bin/bash
# Create some files for directory listing demo
mkdir -p /var/www/html/downloads
cd /var/www/html/downloads
echo "File 1" > file1.txt
echo "File 2" > file2.txt
echo "File 3" > file3.txt

export PROMPT_COMMAND='history -a'
clear
echo "Files created in /var/www/html/downloads"
