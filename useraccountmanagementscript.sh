#!/bin/bash

username="newuser"

# Check if the username is valid
if [[ -z "$username" || "$username" =~ [^a-zA-Z0-9_-] ]]; then
    echo "Error: Invalid username. Usernames can only contain letters, numbers, underscores, or dashes."
    exit 1
fi

# Check if the user exists
if id "$username" &>/dev/null; then
    echo "User $username already exists."
else
    if useradd -m "$username"; then
        echo "User $username created successfully."
    else
        echo "Error: Failed to create user $username."
        exit 1
    fi
fi
