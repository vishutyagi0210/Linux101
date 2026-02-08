#!/bin/bash
grep -q "cd / && echo \"I have arrived\"" ~/.bash_history && exit 0 || exit 1
