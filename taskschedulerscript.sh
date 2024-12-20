#!/bin/bash

scheduled_tasks="/path/to/your_script.sh"
schedule_time="0 2 * * *" # Example: run daily at 2:00 AM

#Schedule a task using cron
echo "$schedule_time $scheduled_tasks" | crontab -
echo "Task scheduled successfully."
