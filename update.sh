#!/bin/bash

# Navigate to the TermuX-Custom directory
cd $HOME/TermuX-Custom || exit

# Pull the latest changes from the remote repository
git pull origin master

# Provide feedback to the user
echo "Repository updated successfully!"
