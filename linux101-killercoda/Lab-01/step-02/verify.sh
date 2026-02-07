#!/bin/bash
grep -q "whoami" ./bash_history && exit 0 || exit 1