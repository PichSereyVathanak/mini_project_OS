#!/bin/bash

echo "======================================="
echo "Currently you are in option: Disk Usage"
echo "======================================="

# Source the log_action.sh script to use the log_action function
source log_action.sh

read -p "Enter a directory path: " dir

# Expand the path (if using `.` or `~`)
dir=$(eval echo "$dir")

if [ -d "$dir" ]; then
	# Display disk usage in a spacific directory
	du -sh "$dir"

	# Log the action
	log_action "Displayed disk usage information of '$dir'"
else
	echo "Invalid directory! @_@"
	log_action "Failed to display disk usage of '$dir'"
fi
