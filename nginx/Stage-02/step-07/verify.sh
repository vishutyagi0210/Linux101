#!/bin/bash
# Check if user performed the investigation steps

# Check if they extracted spike data
spike_extracted=$(grep -c "awk.*10:00.*spike.log" ~/.bash_history)

# Check if they analyzed IPs
ip_analysis=$(grep -c "awk.*print.*1.*spike.log" ~/.bash_history)

# Check if they analyzed User-Agents
ua_analysis=$(grep -c "awk.*F.*6.*spike.log" ~/.bash_history)

# Check if they counted requests
count_analysis=$(grep -c "sort.*uniq.*-c" ~/.bash_history)

# Need at least 3 of the 4 key analysis steps
total=$((spike_extracted + ip_analysis + ua_analysis + count_analysis))

if [ "$total" -ge 3 ]; then
    exit 0
else
    exit 1
fi
