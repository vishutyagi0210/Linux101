#!/bin/bash
grep -q 'echo "hello linux"' ./.bash_history && exit 0 || history -a