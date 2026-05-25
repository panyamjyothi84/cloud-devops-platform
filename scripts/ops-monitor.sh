#!/bin/bash

echo "System Information:"
show_date() {
    echo "Current date is: $(date)"
}

show_date

show_user() {
     echo "Current user is: $(whoami)"
}

show_user

show_disk() {
     echo "current location is: $(pwd)"
}

show_disk

echo " "

echo "Disk Check:"

show_usage() {

    LOG_FILE="../logs/ops-monitor.log"

    if [ -f "$LOG_FILE" ]; then
    echo "File exists"
    else
    touch "$LOG_FILE"
    echo "File created"
    fi

    echo "Ops monitor started at $(date) by $(whoami)"

    DISK_USAGE=$(df -h | grep "C:" | awk '{print $(NF-1)}' | sed 's/%//')

    echo "Current disk usage is $DISK_USAGE%"

	

    if [ "$DISK_USAGE" -ge 80 ]; then
        echo "WARNING: Disk usage is high: $DISK_USAGE%"
        echo "WARNING: Disk usage is high: $DISK_USAGE%" >> "$LOG_FILE"
    else
        echo "Disk usage is normal: $DISK_USAGE%"
        echo "Disk usage is normal: $DISK_USAGE%" >> "$LOG_FILE"
    fi
}

show_usage

echo " "

echo "Available Shell Scripts:"
 
show_scripts() {
      for file in *.sh
do
    echo "Found script: $file"
done

}

show_scripts

echo " "

echo "Ops monitor completed at $(date) by $(whoami)"

echo "===== OPS MONITOR COMPLETED ====="
