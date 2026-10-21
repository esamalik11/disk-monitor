# disk-monitor

Bash script that checks root disk usage and alerts above a threshold (default 80%).

Exits 0 when OK and 1 on alert, so it can be used from cron or CI.

## Usage
bash disk_check.sh
