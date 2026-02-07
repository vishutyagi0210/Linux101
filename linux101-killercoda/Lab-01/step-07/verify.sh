#!/bin/bash
history | grep -q "hostname" /root/.bash_history && exit 0 || exit 1
