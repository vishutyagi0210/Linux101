#!/bin/bash
# Check if user tested all three scenarios and viewed error logs
tested_404=$(grep -c "curl.*localhost/missing" ~/.bash_history)
tested_502=$(grep -c "curl.*localhost:8081" ~/.bash_history)
tested_503=$(grep -c "curl.*localhost:8082" ~/.bash_history)
checked_logs=$(grep -c "tail.*error.log" ~/.bash_history)

if [ "$tested_404" -ge 1 ] && [ "$tested_502" -ge 1 ] && [ "$tested_503" -ge 1 ] && [ "$checked_logs" -ge 1 ]; then
    exit 0
else
    exit 1
fi
