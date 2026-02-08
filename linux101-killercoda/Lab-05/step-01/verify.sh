#!/bin/bash
grep -q "history" ~/.bash_history && exit 0 || exit 1
