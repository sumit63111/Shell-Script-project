#!/bin/bash
######################
#Author : Sumit Singh
#Date : 04/07/24
#Description: Provide Information about active collaborator of the of the github Repo with Help of GITHUBAPI INTEGRATION
API_URL="https://api.github.com"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token

# Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to list users with read access to the repository
function list_users_with_read_access {
    local url="${API_URL}/repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Send a GET request to the GitHub API with authentication
    response=$(curl -s -u "${USERNAME}:${TOKEN}" "$url")

    # Check if the response contains an error message
    if echo "$response" | jq -e 'has("message")' >/dev/null; then
        echo "Error: $(echo "$response" | jq -r '.message')"
        exit 1
    fi


    collaborators=$(echo "$response" | jq -r '.[] | select(.permissions.pull == true) | .login')

    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}


if [[ -z "$REPO_OWNER" || -z "$REPO_NAME" ]]; then
    echo "Usage: $0 <repo_owner> <repo_name>"
    exit 1
fi

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access

