#!/bin/bash
grep -q "date -u" ~/.bash_history && exit 0 || exit 1
