#!/bin/bash
grep -q 'echo "history mark"' .bash_history && grep -q "history [0-9]\+" .bash_history