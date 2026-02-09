#!/bin/bash
# Create sample files for directory listing demo
sudo mkdir -p /var/www/html/downloads
cd /var/www/html/downloads
echo "User Manual v1.0" | sudo tee manual.pdf > /dev/null
echo "Software Installer" | sudo tee installer.exe > /dev/null
echo "License Agreement" | sudo tee license.txt > /dev/null
echo "Release Notes" | sudo tee changelog.md > /dev/null

export PROMPT_COMMAND='history -a'
clear
echo "Sample files created in /var/www/html/downloads"
