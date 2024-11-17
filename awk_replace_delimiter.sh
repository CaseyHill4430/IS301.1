#!/bin/bash
# Casey Hill

# Check if the correct number of arguments is provided (2 arguments)
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <delimiter_pattern> <delimiter_replacement>"
    exit 1
fi

# Assign arguments to variables
delimiter_pattern=$1
replacement_delimiter=$2

# Use awk to replace the delimiter pattern with the replacement pattern
awk -v pattern="$delimiter_pattern" -v replacement="$replacement_delimiter" \
    '{gsub(pattern, replacement); print}' /dev/stdin

