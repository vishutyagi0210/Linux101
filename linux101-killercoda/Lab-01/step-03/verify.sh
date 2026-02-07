#!/bin/bash
grep -q "cat /etc/os-release" /root/.bash_history && exit 0 || exit 1
