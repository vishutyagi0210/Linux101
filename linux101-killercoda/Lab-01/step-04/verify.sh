#!/bin/bash
history | grep -q "uname -r" && exit 0 || exit 1
