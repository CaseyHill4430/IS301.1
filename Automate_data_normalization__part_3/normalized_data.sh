#!/bin/bash
# Author: [Your Full Name]
# Script to normalize semi-structured scraped data into a CSV format saved as a .txt file.

# Input and output file names
INPUT_FILE="mdpiPubs.txt"
OUTPUT_FILE="normalized_data.csv"

# Create the header for the .txt file (in CSV format)
echo "Tag,Category,Title,Authors,DOI,Date" > "$OUTPUT_FILE"

# Process the input file line by line
while IFS= read -r line; do
    # Check for the start of an article (contains "Open Access")
    if [[ "$line" =~ ^Open\ Access ]]; then
        # Extract the "Open Access" tag
        tag="Open Access"

        # Extract the category (e.g., Systematic Review, Article, etc.)
        category=$(echo "$line" | sed -E 's/^Open Access (Systematic Review|Article|Editorial|Opinion|Case Report|Review).*/\1/')

        # Read the next line(s) for the title
        read -r title_line
        title=""
        while [[ ! "$title_line" =~ ^by ]]; do
            title="${title}${title_line} "
            read -r title_line
        done
        title=$(echo "$title" | sed 's/ $//') # Remove trailing space

        # Extract the authors (current line starts with "by")
        authors=$(echo "$title_line" | sed 's/by //')

        # Read the next line for publication details
        read -r pub_info_line
        doi=$(echo "$pub_info_line" | grep -o 'https://doi.org[^ ]*')
        date=$(echo "$pub_info_line" | grep -oE '[0-9]{1,2} [A-Za-z]{3} [0-9]{4}')

        # Write the extracted data to the .txt file in CSV format
        echo "\"$tag\",\"$category\",\"$title\",\"$authors\",\"$doi\",\"$date\"" >> "$OUTPUT_FILE"
    fi
done < "$INPUT_FILE"

# Inform the user
echo "Normalization complete. Output saved to $OUTPUT_FILE."
