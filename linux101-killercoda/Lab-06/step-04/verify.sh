#!/bin/bash
grep -q "cd /root && echo .* || echo .*" ~/.bash_history && exit 0 || exit 1
