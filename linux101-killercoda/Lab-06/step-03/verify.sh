#!/bin/bash
grep -q "ls /fake || echo" ~/.bash_history && exit 0 || exit 1
