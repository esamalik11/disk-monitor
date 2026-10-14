#!/bin/bash
USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%'
echo "Disk Usage: ${USAGE}%"

