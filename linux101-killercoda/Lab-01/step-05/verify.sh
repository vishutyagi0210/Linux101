#!/bin/bash
grep -q "uptime" ~/.bash_history && exit 0 || exit 1
