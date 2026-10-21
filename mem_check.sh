#!/bin/bash
free -m | awk 'NR==2 {print "Memory used: " $3 "MB of " $2 "MB"}'
