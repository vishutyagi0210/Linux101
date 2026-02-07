#!/bin/bash
history | grep -q "uptime" && exit 0 || exit 1
