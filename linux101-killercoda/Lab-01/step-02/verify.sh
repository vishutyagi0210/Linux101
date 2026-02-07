#!/bin/bash
history | grep -q "whoami" && exit 0 || exit 1
