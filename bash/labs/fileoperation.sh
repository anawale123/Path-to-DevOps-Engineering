#!/bin/bash

# Prompt user for directory and file name
read -p "Please enter the directory you want to use: " directory
read -p "File you wish to create: " file

# Check if user provided both directory and file names
if [ "$directory" ] && [ "$file" ]; then
    # Create directory if it doesn't exist
    mkdir -p "$directory"

    # Navigate into the directory
    cd "$directory" || exit  # Exit if cd fails

    # Create the file
    touch "$file"

    # Confirmation message
    echo "✅ Thanks for your service! The file '$file' has been created inside the directory '$directory'."
fi
 
