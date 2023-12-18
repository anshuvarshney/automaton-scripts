#!/bin/bash

# Array of repository directories
repos=("repo1" "repo2" "repo3" "repo4" "repo5" "repo6" "repo7" "repo8" "repo9" "repo10")

# Function to install npm and pnpm in a repository
install_npm_pnpm() {
    repo_dir="$1"

    # Change directory to the repository
    cd "$repo_dir" || exit

    # Install npm packages
    npm install

    # Install pnpm globally
    npm install -g pnpm

    # Return to the original directory
    cd ..
}

# Loop through each repository and install npm and pnpm
for repo in "${repos[@]}"; do
    install_npm_pnpm "$repo"
done

echo "NPM and PNPM installed successfully in all repositories."

