#!/bin/bash

log_files="/var/log/apache2/access.log"

# Analyze web server log to count unique IP addresses
awk '{print \$1}' "$log_files" | sort | uniq -c | sort -nr

echo "Web server log analyzed."

