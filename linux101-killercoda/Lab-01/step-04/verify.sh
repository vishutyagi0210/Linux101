#!/bin/bash
grep -q "uname -r" /root/.bash_history && exit 0 || exit 1
