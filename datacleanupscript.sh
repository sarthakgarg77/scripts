#!/bin/bash

directory="/path/to/cleanup"

# Remove files older than 7 days in specified directory
find "$directory" -type f -mtime +7 -exec rm {} \;

if [ $? -eq 0 ]; then
  echo "Old files removed."
else
  echo "Error removing files. Check directory permissions and path."
fi

