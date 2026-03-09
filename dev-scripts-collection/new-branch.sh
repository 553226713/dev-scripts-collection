#!/bin/bash
# Create a new branch and switch to it

if [ -z "$1" ]; then
  echo "Usage: ./new-branch.sh <branch-name>"
  exit 1
fi

BRANCH_NAME=$1

# Create and switch to new branch
git checkout -b "$BRANCH_NAME"

# Push to remote and set upstream
git push -u origin "$BRANCH_NAME"

echo "✅ Created and pushed branch: $BRANCH_NAME"
