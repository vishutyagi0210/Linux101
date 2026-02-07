#!/bin/bash
grep -q "^ls$" /root/.bash_history && exit 0 || exit 1