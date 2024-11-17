#!/bin/bash
# Casey Hill | 11/16/2024

# Check if a name  is provided
if [ -z "$1" ]; then
    echo "Usage: $0 [name]"
    exit 1
fi

# Use grep to find and display matching lines
grep "$1"
