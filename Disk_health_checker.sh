#!/bin/bash

 
  Disk=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
  
echo "Disk usage: $Disk%"

  if [ "$Disk" -ge 80 ]
  then
	  echo "WARRING: Disk is high"
	  
  else
	  echo "OK: Disk is ok"
  fi

