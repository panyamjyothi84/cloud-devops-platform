===== SYSTEM HEALTH CHECK =====

Current Date and Time:
Tue May 19 22:57:20 IST 2026

Current User:
USER

Current Directory:
/c/Users/USER/cloud-devops-platform/scripts

Disk Usage:
Filesystem            Size  Used Avail Use% Mounted on
C:/Program Files/Git  189G  151G   38G  80% /
D:                     49G  4.6G   45G  10% /d

Memory Usage:
./system-health.sh: line 23: free: command not found

System Uptime:
./system-health.sh: line 27: uptime: command not found

===== SYSTEM HEALTH CHECK =====

Current Date and Time:
Tue May 19 22:58:07 IST 2026

Current User:
USER

Current Directory:
/c/Users/USER/cloud-devops-platform/scripts

Disk Usage:
Filesystem            Size  Used Avail Use% Mounted on
C:/Program Files/Git  189G  151G   38G  80% /
D:                     49G  4.6G   45G  10% /d

Memory Usage:
./system-health.sh: line 23: free: command not found

System Uptime:
./system-health.sh: line 27: uptime: command not found

#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="

echo ""
echo "Current Date and Time:"
date

echo ""
echo "Current User:"
whoami

echo ""
echo "Current Directory:"
pwd

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Health check completed." >> ../logs/system-health.log
