# chmod u+x hello.sh - run this code to give permission

#!/bin/bash

# Check if exactly one argument is passed
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <name>"
    exit 1
fi

# Capture the first argument as the name
name="$1"

# Print the greeting
echo "Hello, $name"
