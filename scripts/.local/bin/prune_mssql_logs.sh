#!/bin/bash

# Set path to MSSQL log directory
LOG_DIR="/Users/neil.patterson/docker-storage/dev-env-chart/mssql/log"

# Safety check
if [[ ! -d "$LOG_DIR" ]]; then
  echo "Directory $LOG_DIR not found!"
  exit 1
fi

echo "Pruning core dumps and crash logs in $LOG_DIR..."

# Delete core dump directories (e.g. core.sqlservr.*.d)
find "$LOG_DIR" -type d -name 'core.sqlservr.*.d' -exec rm -rf {} +

# Delete core dump text/json files
find "$LOG_DIR" -type f \( -name 'core.sqlservr.*.txt' -o -name 'core.sqlservr.*.json' \) -exec rm -f {} +

# Optional: Clean up older SQL Server error logs (keep last 3)
find "$LOG_DIR" -type f -name 'errorlog.*' | sort -r | tail -n +4 | xargs -r rm

# Optional: Delete large .xel files (system health)
find "$LOG_DIR" -type f -name '*.xel' -size +5M -exec rm -f {} +

echo "Cleanup complete."
