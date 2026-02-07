#!/bin/bash
grep -q "date" /root/.bash_history && exit 0 || exit 1
