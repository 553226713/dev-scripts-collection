#!/bin/bash
# Git Cleanup Script - Remove merged branches and stale remotes

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}🧹 Git Cleanup Script${NC}"
echo "================================"

# Delete merged local branches (except main, develop, master)
echo -e "\n${YELLOW}Deleting merged local branches...${NC}"
git branch --merged main | grep -v "main\|master\|develop" | xargs -n 1 git branch -d

# Delete stale remote tracking branches
echo -e "\n${YELLOW}Deleting stale remote tracking branches...${NC}"
git remote prune origin

# Show cleaned up status
echo -e "\n${GREEN}✅ Cleanup complete!${NC}"
echo "Remaining branches:"
git branch -a
