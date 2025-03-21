#!/bin/bash

echo "=============================================="
echo "Currently you are in option: Search for a File"
echo "=============================================="

# Source the log_action.sh script to use the log_action function
source log_action.sh

# Prompt the user to enter the directory and filename
read -p "Enter the directory to search in: " dir
read -p "Enter the filename to search for: " filename

# Check if the directory exists
if [ -d "$dir" ]; then
    # Search for the file in the given directory
    result=$(find "$dir" -name "$filename")

    # Check if the file was found
    if [ -n "$result" ]; then
        echo "File found at:"
        echo "$result"

        # Display file details
        echo "File details:"
        ls -lh "$result"

        log_action "File '$filename' found in '$dir'"
    else
        echo "File not found."
        log_action "File '$filename' not found in '$dir'"
    fi
else
    echo "Invalid directory."
    log_action "Failed to search file '$filename' (Invalid directory '$dir')"
fi

