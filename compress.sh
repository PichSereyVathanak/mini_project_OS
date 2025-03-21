#!/bin/bash

echo "=========================================="
echo "Currently you are in option: Compress File"
echo "=========================================="

# Source the log_action.sh script to use the log_action function
source log_action.sh

# Prompt the user to enter the file/directory to compress and the output filename
read -p "Enter the file or directory to compress: " source
read -p "Enter the output zip file name (without .zip): " zipname

# Expand the source path
source=$(eval echo "$source")

# Check if the file/directory exists
if [ -e "$source" ]; then
    # Create the zip file
    zip -r "$zipname.zip" "$source"

    # Check if compression was successful
    if [ $? -eq 0 ]; then
        echo "Successfully compressed '$source' to '$zipname.zip'"
        log_action "Successfully compressed '$source' to '$zipname.zip'"
    else
        echo "Failed to compress '$source'"
        log_action "Failed to compress '$source'"
    fi
else
    echo "Invalid file or directory!"
    log_action "Failed to compress (Invalid source '$source')"
fi

