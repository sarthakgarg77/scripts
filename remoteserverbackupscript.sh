#!/bin/bash

source_dir="/path/to/source"
remote_server="user@remoteServer:/path/to/backup"

# Backup files/directories to a remote server using rsync
rsync -avz "$source_dir" "$remote_server"

if [ $? -eq 0 ]; then
    echo "Files backed up to remote server."
else
    echo "Error backing up files."
fi


