#!/bin/bash

backup_dir="/path/to/backups"
max_backups=5

# Rotate backups by deleting the oldest if more than max_backups
while [[ $(ls -1 "$backup_dir" | wc -l) -gt "$max_backups" ]]; do
  oldest_backup=$(ls -lt "$backup_dir" | tail -n 1 | awk '{print \$9}')
  rm -rf "$backup_dir/$oldest_backup"
done

echo "Backup rotation completed."

