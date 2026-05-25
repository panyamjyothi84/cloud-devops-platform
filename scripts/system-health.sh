
#!/bin/bash

LOG_FILE="../logs/disk-alert.log"

DISK_USAGE=$(df -h | grep "C:" | awk '{print $5}' | sed 's/%//')

echo "Detected disk usage: $DISK_USAGE%"

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "WARNING: Disk usage is high: $DISK_USAGE%" >> "$LOG_FILE"
else
    echo "Disk usage is normal: $DISK_USAGE%" >> "$LOG_FILE"
fi
