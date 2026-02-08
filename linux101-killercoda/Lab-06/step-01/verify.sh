#!/bin/bash
grep -q 'date ; echo "Done"' ~/.bash_history && exit 0 || exit 1
