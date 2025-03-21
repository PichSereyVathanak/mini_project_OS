#!/bin/bash

echo "=========================================="
echo "Currently you are in option: Create Backup"
echo "=========================================="

source log_action.sh

read -p "Enter a file or directory Path to backup: " source
read -p "Enter a Backup Path: " dest

source=$(eval echo "$source")
dest=$(eval echo "$dest")

# Check if source exists
if [ -e "$source" ]; then
    # Check if destination is a directory and writable
    if [ -d "$dest" ] && [ -w "$dest" ]; then
        # Check if source is a file or directory
        if [ -d "$source" ]; then
            cp -r "$source" "$dest"
        else
            cp "$source" "$dest"
        fi

        # Check if the cp command was successful
        if [ $? -eq 0 ]; then
            echo "Successfully backed up from: '$source' to '$dest'"
            # Write to script.log
            log_action "Successfully backed up from: '$source' to '$dest'"
        else
            echo "Failed to back up from: '$source' to '$dest'"
            log_action "Failed to back up from: '$source' to '$dest'"
        fi
    else
        echo "'$dest' is not a valid directory or not writable!"
        log_action "Failed to back up from: '$source' to '$dest' (invalid destination)"
    fi
else
    echo "'$source' does not exist! ><"
    log_action "Failed to back up from: '$source' (source does not exist)"
fi

