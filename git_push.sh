#!/bin/bash

# Ask for commit message from the user
echo "Enter commit message:"
read commit_message

git add .
git pull
git commit -m "$commit_message"
echo "Enter your GitHub username:"
read username

# Ask for the GitHub Personal Access Token (PAT) instead of the password
echo "Enter your GitHub Personal Access Token (PAT):"
read -s token  # The '-s' option hides the input for security

# Construct the remote URL using the username and PAT
REMOTE_URL="https://$username:$token@github.com/paulsonashisherrala/C-Programming.git"

# Push the changes using the constructed remote URL
git push $REMOTE_URL

# Check if the push was successful
if [ $? -eq 0 ]; then
    # Display an animated "Done!" message
    echo -n "Pushing your changes"
    for i in {1..3}
    do
        echo -n "."
        sleep 0.5  # Wait for half a second
    done
    echo -e "\n🎉✨ DONE! Your changes have been pushed successfully! 🚀🎉"
else
    echo "Error during push!"  # Error message in case of failure
fi

