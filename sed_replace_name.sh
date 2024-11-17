#!/bin/bash
# Casey Hill

# Check if the correct number of arguments is provided (2 arguments)
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <name> <replacement_text>"
    exit 1
fi

# Assign variables
name_pattern=$1
replacement_text=$2

# Process the input file with sed and replace the text
sed "s/$name_pattern/$replacement_text/g" < /dev/stdin

# Output changes
echo "Replaced all occurrences of '$name_pattern' with '$replacement_text'."