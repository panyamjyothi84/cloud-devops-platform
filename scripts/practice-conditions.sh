#!/bin/bash

DISK_USAGE=79

NUMBER=10

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "Warning: disk high"
else
    echo "Disk normal"
fi
