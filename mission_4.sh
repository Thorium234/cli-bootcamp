#!/bin/bash

# Prompt the user for their name
echo "Please enter your name:"

# Capture the user's input and store it in the CADET_NAME variable
read CADET_NAME

# Check if the entered name is "admin" using an if/else statement
if [ "$CADET_NAME" = "admin" ]; then
    # If the name is "admin", grant access
    echo "Access Granted. "
else
    # If the name is anything else, deny access
    echo "Access Denied."
fi

echo "Hello, $CADET_NAME! Mission 4 complete."