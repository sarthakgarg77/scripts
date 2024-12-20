#!/bin/bash

git_repo="/path/to/your/repo"

cd "$git_repo"
git pull origin master

if [ $? -eq 0 ]; then
  echo "Git repository updated."
else
  echo "Error updating Git repository."
fi

