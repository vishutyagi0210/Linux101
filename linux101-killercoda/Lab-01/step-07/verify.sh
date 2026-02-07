#!/bin/bash
history | grep -q "hostname" && exit 0 || exit 1
