#!/bin/bash
  SOURCE="Home/devops-practice"
  BACKUP_DIR="Home/backups"
  DATE=$(date +"%y-%m-%d_%H-%M-%S")

  mkdir -p "$BACKUP_DIR"
  BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"
  
  tar -czf "$BACKUP_FILE" "$SOURCE"
  if [ $? -eq 0 ];
  then
	  echo "Backup sucessfull"
	  echo "Backup file:
	  $BACKUP_FILE"
  else
	  echo "ERROR: Backup failed!"
	  exit 1
  fi
