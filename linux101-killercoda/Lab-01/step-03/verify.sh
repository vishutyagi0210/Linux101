#!/bin/bash
history | grep -q "cat /etc/os-release" && exit 0 || exit 1
