#!/bin/bash

   # Hostname aur uptime variables

     echo "===== SERVER HEALTH SYSYTEM ====="

    HOST=$(hostname)
    echo "Hostname: $HOST"
    UPTIME_INFO=$(uptime -p)
    echo "Uptime: $UPTIME_INFO"

    echo "===== RESOURCES STATUS ======"

    #RAM usage
    ram_usage=$(free | awk '/Mem:/ {printf "%.0f" , $3/$2 * 100}')
    echo "RAM usage: $ram_usage%"
    
    if [ "$ram_usage" -ge 80 ];
then
	echo "RAM STATUS: WARINNIG"
else
	echo "RAM STATUS: OK"
    fi    

#Disk usage
   
    disk_usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
    echo "Disk Usage: $disk_usage%"

    if [ "$disk_usage" -ge 80 ];
    then
	    echo "DiSK STATUS: WARINNG"
    else
	    echo "DISK STATUS: OK"
    fi

    echo "=== FINAL STATUS ==="

    if [ "$ram_usage" -ge 80 ] || [ "$disk_usage" -ge 80 ];
    then
        echo "Server status: WARNNING"
else
	echo "Server status: HEALTHY"
    fi


