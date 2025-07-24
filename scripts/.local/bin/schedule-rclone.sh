#!/bin/bash

# Exit on error
set -e

# Make sure rclone is in PATH
export PATH="/usr/local/bin:/usr/bin:/bin"

# Log start
echo "Starting rclone backup: $(date)" >> /home/neil/logs/schedule-rclone.log

# Run rclone
/usr/bin/rclone copy /home/neil b2-utility-research-muffin-kitchen:utility-research-muffin-kitchen/linux-backup \
  --filter "+ /Documents/**" \
  --filter "+ /Projects/**" \
  --filter "+ /.config/**" \
  --filter "+ /Pictures/**" \
  --filter "+ /dotfiles/**" \
  --filter "- /**" \
  >> /home/neil/logs/schedule-rclone.log 2>&1

# Log finish
echo "Finished rclone backup: $(date)" >> /home/neil/logs/schedule-rclone.log

