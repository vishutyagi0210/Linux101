#!/bin/bash
grep -q "whoami" /root/.bash_history && exit 0 || exit 1