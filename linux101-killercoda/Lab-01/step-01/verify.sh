#!/bin/bash
history | grep -q 'echo.*hello linux' && exit 0 || exit 1