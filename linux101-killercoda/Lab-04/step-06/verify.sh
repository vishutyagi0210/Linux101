#!/bin/bash
grep -q "echo $?" ~/.bash_history && exit 0 || exit 1
