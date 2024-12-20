#!/bin/bash

packages=("package1" "package2" "package3")

# Install listed packages using apt-get
sudo apt-get update
sudo apt-get install "${packages[@]}" -y

if [ $? -eq 0 ]; then
  echo "Packages installed successfully."
else
  echo "Error installing packages."
fi

