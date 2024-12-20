#!/bin/bash

backup_dir="/path/to/backup"
source_dir="/path/to/source"

# Check if backup directory exists
if [ ! -d "$backup_dir" ]; then
    echo "Error: Backup directory $backup_dir does not exist. Creating it now."
    mkdir -p "$backup_dir"
fi

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory $source_dir does not exist. Exiting."
    exit 1
fi

# Create a timestamped backup of the source directory
tar -czf "$backup_dir/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$source_dir"
echo "Backup completed successfully."
