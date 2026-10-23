#!/bin/bash
THRESHOLD=${1:-85}
USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "ALERT: Disk usage is ${USAGE}% (threshold ${THRESHOLD}%)"
    exit 1
else
    echo "OK: Disk usage is ${USAGE}%"
    fi
