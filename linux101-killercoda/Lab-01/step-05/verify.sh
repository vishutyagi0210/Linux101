#!/bin/bash
grep -q "uptime" /root/.bash_history && exit 0 || exit 1
