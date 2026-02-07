#!/bin/bash
grep -q "date" ./.bash_history && exit 0 || exit 1
