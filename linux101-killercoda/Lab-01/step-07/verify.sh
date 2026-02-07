#!/bin/bash
grep -q "hostname" ./.bash_history && exit 0 || exit 1
