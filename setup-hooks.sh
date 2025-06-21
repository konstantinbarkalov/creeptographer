#!/bin/bash
echo "Setting up Git hooks for version management..."

# Create the Git hooks directory if it doesn't exist
mkdir -p .git/hooks

# Create the pre-commit hook file
cat > .git/hooks/pre-commit << 'EOF'
#!/bin/sh
# Auto-update version and last_updated date
node ./scripts/update-version.js
if [ $? -ne 0 ]; then
    echo "Error updating version information"
    exit 1
fi
git add docs/_config.yml
EOF

# Make the hook executable
chmod +x .git/hooks/pre-commit

echo "Successfully set up Git hooks!"
echo "Now, every time you commit, version and last updated date will be automatically updated."
