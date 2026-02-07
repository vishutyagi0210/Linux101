#!/bin/bash
grep -q "cd /" /root/.bash_history && exit 0 || exit 1