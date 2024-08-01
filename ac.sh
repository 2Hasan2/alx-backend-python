#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
    echo "Usage: ./file.sh <commit_message>"
    exit 1
fi

commit_message="$1"

# Add and commit each file individually
for file in $(ls); do
    if [ -f "$file" ]; then
        git add "$file"
        git commit -m "Add $file"
    fi
done

# Add any remaining changes
git add .

# Commit all added changes with the provided message
git commit -m "$commit_message"

echo "Files added and committed with message: '$commit_message'"
