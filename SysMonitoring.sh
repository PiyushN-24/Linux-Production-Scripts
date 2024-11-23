#!/bin/bash

threshold=90
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

if [ "$cpu_usage" -gt "$threshold" ]; then
	echo "High CPU usage detected: $cpu_usage%" | \
	mail -s "High CPU Usage Alert" xyz@example.com
fi

