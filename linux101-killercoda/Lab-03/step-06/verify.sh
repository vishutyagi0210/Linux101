#!/bin/bash
grep -q "tree" ~/.bash_history && exit 0 || exit 1
