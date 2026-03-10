#!/bin/bash

# Git Cleanup Script - Remove merged branches locally and remotely

echo "🧹 Git Cleanup Utility"
echo "======================"

# Get current branch
CURRENT_BRANCH=$(git branch --show-current)
echo "Current branch: $CURRENT_BRANCH"

# List merged branches (excluding main/master/develop)
echo ""
echo "📋 Locally merged branches (excluding $CURRENT_BRANCH):"
git branch --merged | grep -v "\*" | grep -v "$CURRENT_BRANCH" | grep -v "main" | grep -v "master" | grep -v "develop" || echo "  None found"

# Confirm before deletion
echo ""
read -p "Delete these merged branches locally? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git branch --merged | grep -v "\*" | grep -v "$CURRENT_BRANCH" | grep -v "main" | grep -v "master" | grep -v "develop" | xargs -n 1 git branch -d
    echo "✅ Local branches cleaned!"
fi

# Remote cleanup
echo ""
read -p "Delete remote merged branches? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Fetching remote..."
    git fetch --prune
    echo "✅ Remote pruned!"
fi

echo ""
echo "✨ Done!"
