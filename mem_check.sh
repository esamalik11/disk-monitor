#!/bin/bash
free -m | awk 'NR==2 {print "Memory used: " $3 "MB of " $2 "MB"}'
git add mem_check.sh
git commit -m "feat: add memory usage check script"
git log --oneline
git switch main
ls
