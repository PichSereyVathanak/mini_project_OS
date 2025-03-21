#!/bin/bash

# This script logs user actions in the project

log_file="script.log"

log_action() {
    local message="$1"
    # Write directly into script.log with timestamp
    echo "$(date "+%Y-%m-%d | %H:%M:%S") - $message" >> "$log_file"
}

