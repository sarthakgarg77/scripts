#!/bin/bash

source_dir="/path/to/source"
destination_dir="/path/to/destination"

# Synchronize directories using rsync
rsync -avz "$source_dir/" "$destination_dir/"

if [ $? -eq 0 ]; then
  echo "Directories synchronized successfully."
else
  echo "Error synchronizing directories."
fi

