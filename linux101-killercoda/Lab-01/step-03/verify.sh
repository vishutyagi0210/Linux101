#!/bin/bash
grep -q "cat /etc/os-release" ~/.bash_history && exit 0 || exit 1
