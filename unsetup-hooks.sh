#!/bin/bash
echo "Removing Git hooks for version management..."

# Check if pre-commit hook exists
if [ -f .git/hooks/pre-commit ]; then
    echo "Removing pre-commit hook..."
    rm -f .git/hooks/pre-commit
else
    echo "No pre-commit hook found."
fi

echo "Hook removal complete!"
echo "Version auto-updates are now disabled for this repository."
