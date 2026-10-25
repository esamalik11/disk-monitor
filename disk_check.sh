#!/bin/bash
THRESHOLD=${1:-85}

if ! [[ "$THRESHOLD" =~ ^[0-9]+$ ]]; then
    echo "ERROR: threshold must be a whole number, got '$THRESHOLD'" >&2
    exit 2
fi

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "ALERT: Disk usage is ${USAGE}% (threshold ${THRESHOLD}%)"
    exit 1
else
    echo "OK: Disk usage is ${USAGE}%"
    fi
