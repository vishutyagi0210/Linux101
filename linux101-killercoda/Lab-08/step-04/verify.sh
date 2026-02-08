#!/bin/bash
grep -q "touch notes.txt" ~/.bash_history && exit 0 || exit 1
