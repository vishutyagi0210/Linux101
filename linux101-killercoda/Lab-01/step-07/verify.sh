#!/bin/bash
grep -q "hostname" /root/.bash_history && exit 0 || exit 1
