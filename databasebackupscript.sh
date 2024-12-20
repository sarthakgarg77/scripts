#!/bin/bash

database_name="your_database"
output_file="database_backup_$(date +%Y%m%d).sql"

# Perform database backup using mysqldump
mysqldump -u username -p password "$database_name" > "$output_file"

if [ $? -eq 0 ]; then
  echo "Database backup created: $output_file"
else
  echo "Error during database backup."
fi

