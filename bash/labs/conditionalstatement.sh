#!/bin/bash

# Prompt user for file name
read -p "Please enter the file you wish to search: " file

# Check if the file exists
if [ -e "$file" ]; then
    echo "File '$file' exists."

    # Check if file is readable
    if [ -r "$file" ]; then
        echo "File '$file' is readable."
    else
        echo "File '$file' is NOT readable."
    fi

    # Check if file is writable
    if [ -w "$file" ]; then
        echo "File '$file' is writable."
    else
        echo "File '$file' is NOT writable."
    fi

    # Check if file is executable
    if [ -x "$file" ]; then
        echo "File '$file' is executable."
    else
        echo "File '$file' is NOT executable."
    fi
