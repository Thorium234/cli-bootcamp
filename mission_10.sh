#!/bin/bash

# Function definition
display_completion() {
    echo "Deployment complete!"
}

# Check if user gave 1 argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILENAME=$1

# Check if file exists
if [ -e "$FILENAME" ]; then
    # Loop to make 5 backups
    for i in {1..5}; do
        cp "$FILENAME" "${FILENAME}_backup${i}"
    done
    # Call function
    display_completion
else
    echo "Error: File '$FILENAME' does not exist."
    exit 1
fi
