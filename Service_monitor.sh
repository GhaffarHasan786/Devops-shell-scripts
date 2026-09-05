#!/bin/bash

  SERVICE="ngnix"
  echo "===== SERVICE MONITOR ====="
  echo "Checking: $SERVICE"

  if systemctl is-active --quite "$SERVICE"; then
	  echo "$SERVICE is Running"
  else
	  echo "$SERVICE is NOT Running"
	  echo "Attemping to start $SERVICE..."
	  sudo systemctl start "$SERVICE"
	  
	  if systemctl is-active --quite "$SERVICE"; then
		  echo "$SERVICE is started successfully."
	  else
		  echo "ERROR: failed to  start $SERVICE"
		  exit 1
	  fi
  fi
