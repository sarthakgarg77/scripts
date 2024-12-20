#!/bin/bash

database_name="your_database"
days_to_keep=7

# Clean up old database backups older than specified days
find /path/to/database/backups -name "${database_name}_*.sql" -mtime +"$days_to_keep" -exec rm {} \;

if [ $? -eq 0 ]; then
  echo "Old database backups cleaned up."
else
  echo "Error cleaning up database backups."
fi

