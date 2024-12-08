#!/bin/bash

# Ask for commit message from the user
echo "Enter commit message:"
read commit_message

# Stage all changes
git add .

# Pull the latest changes
git pull

# Commit with the user-provided message
git commit -m "$commit_message"

# Ask for the GitHub username
echo "Enter your GitHub username:"
read username

# Ask for the GitHub Personal Access Token (PAT) instead of the password
echo "Enter your GitHub Personal Access Token (PAT):"
read -s token  # The '-s' option hides the input for security

# Construct the remote URL using the username and PAT
REMOTE_URL="https://$username:$token@github.com/paulsonashisherrala/C-Programming.git"

# Push the changes using the constructed remote URL
git push $REMOTE_URL

