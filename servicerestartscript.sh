#!/bin/bash

service_name="your.service"

# Restart a specified service
sudo systemctl restart "$service_name"

if [ $? -eq 0 ]; then
  echo "Systemctl restart '$service_name' completed successfully."
else
  echo "Error restarting service '$service_name'."
fi

