#!/bin/bash

# Array of GitHub repositories
repos=("repo1" "repo2" "repo3" "repo4" "repo5" "repo6" "repo7" "repo8" "repo9" "repo10")  #change the name of the repos as your repos 

# Function to check out the dev branch and pull the latest code
pull_from_github() {
    repo_url="https://github.com/your-username/$1.git" 
    repo_dir="$1"

    # Clone the repository if not already present
    if [ ! -d "$repo_dir" ]; then
        git clone "$repo_url"
    fi

    # Change directory to the repository
    cd "$repo_dir" || exit

    # Switch to the dev branch
    git checkout dev

    # Pull the latest code
    git pull origin dev

    # Return to the original directory
    cd ..
}

# Loop through each repository and pull the code
for repo in "${repos[@]}"; do
    pull_from_github "$repo"
done

echo "Code pulled successfully from all repositories."

