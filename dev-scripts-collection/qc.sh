#!/bin/bash
# Quick commit with auto-generated message

if [ -z "$1" ]; then
  echo "Usage: ./qc 'Your commit message'"
  exit 1
fi

# Add all changes
git add -A

# Commit with message
git commit -m "$1"

# Push to current branch
git push

echo "✅ Committed and pushed!"
