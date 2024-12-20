#!/bin/bash

logfile="/path/to/logfile.log"

# Extract lines with "ERROR" from the log file
grep "ERROR" "$logfile" > error.log 2>/dev/null

if [ $? -eq 0 ]; then
  echo "Error log created: error.log"
else
  echo "Error: Log file not found or empty."
fi

