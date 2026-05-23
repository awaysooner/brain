#!/bin/zsh

# Usage: ./backup-to-github.sh "Your commit message"
# If no message is provided, it will prompt interactively.

echo "=== Backing up brain to GitHub ==="

cd ~/brain || { echo "ERROR: ~/brain folder not found"; exit 1; }

# Add all changes
git add .

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    # Use first argument as commit message if provided
    if [ -n "$1" ]; then
        commit_msg="$1"
    else
        echo "Enter commit message (or press Enter for default):"
        read commit_msg
    fi
    
    if [ -z "$commit_msg" ]; then
        commit_msg="Update brain $(date '+%Y-%m-%d %H:%M')"
    fi
    
    git commit -m "$commit_msg"
    git push
    echo "=== Backup complete ==="
fi