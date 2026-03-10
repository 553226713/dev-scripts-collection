#!/bin/bash

# Quick Commit & Push Script
# Usage: ./quick-commit.sh "commit message"

BRANCH=$(git branch --show-current)
MSG=${1:-"Update"}

if [ -z "$1" ]; then
    echo "Usage: ./quick-commit.sh \"Your commit message\""
    exit 1
fi

echo "📦 Quick Commit & Push"
echo "======================"
echo "Branch: $BRANCH"
echo "Message: $MSG"
echo ""

# Check for changes
if git diff --quiet && git diff --cached --quiet; then
    echo "❌ No changes to commit"
    exit 1
fi

# Add all changes
echo "📂 Adding changes..."
git add -A

# Commit
echo "💾 Committing..."
git commit -m "$MSG"

# Push
echo "🚀 Pushing to remote..."
git push -u origin "$BRANCH"

echo "✅ Done! Changes pushed to $BRANCH"
