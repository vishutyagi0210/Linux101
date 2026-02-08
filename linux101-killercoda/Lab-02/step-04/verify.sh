#!/bin/bash
grep -q "cd ~" ~/.bash_history && exit 0 || exit 1