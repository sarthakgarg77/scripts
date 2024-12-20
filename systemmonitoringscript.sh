#!/bin/bash

threshold=90  # CPU usage threshold (%)

# Get CPU usage as an integer
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk -F',' '{print $1}' | awk '{print $2}' | cut -d. -f1)

if [ "$cpu_usage" -gt "$threshold" ]; then
    echo "High CPU usage detected: $cpu_usage%"
    # Add alert/notification logic here
else
    echo "CPU usage is normal: $cpu_usage%"
fi
