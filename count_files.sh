#!/bin/bash

echo "========================================"
echo "Currently you are in option: Count files"
echo "========================================"

# Source the log_action.sh script to use the log_action function
source log_action.sh

# Prompt the user to enter a directory path
read -p "Enter a directory: " dir

# Check if the entered path is a valid directory
if [ -d "$dir" ]; then
    # Count the number of files (excluding directories) in the given directory
    count=$(find "$dir" -type f | wc -l)
    
    # Display the file count result
    echo "Number of files in '$dir': $count"
    
    # Log the successful operation
    log_action "Succeeded in counting files in '$dir'"
else
    # Display an error message if the directory does not exist
    echo "Invalid directory."
    
    # Log the failure
    log_action "Failed to count files in '$dir' (directory does not exist)"
fi

