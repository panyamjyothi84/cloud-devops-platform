#!/bin/bash

LOG_FILE="../logs/disk-alert.log"

DISK_USAGE=$(df -h | grep "C:" | awk '{print $(NF-1)}' | sed 's/%//')

if [ "$DISK_USAGE" -ge 80 ]; then
   echo "WARNING: Disk usage is high: $DISK_USAGE%" >> "$LOG_FILE"
else
   echo "Disk usage is normal: $DISK_USAGE%" >> "$LOG_FILE"
fi


