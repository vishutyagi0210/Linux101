#!/bin/bash
history | grep -q "date" && exit 0 || exit 1
