@echo off
echo Setting up Git hooks for version management...

REM Create the Git hooks directory if it doesn't exist
if not exist ".git\hooks" mkdir .git\hooks

REM Create the pre-commit hook file
echo #!/bin/sh > .git\hooks\pre-commit
echo # Auto-update version and last_updated date >> .git\hooks\pre-commit
echo node ./scripts/update-version.js >> .git\hooks\pre-commit
echo if [ $? -ne 0 ]; then >> .git\hooks\pre-commit
echo     echo "Error updating version information" >> .git\hooks\pre-commit
echo     exit 1 >> .git\hooks\pre-commit
echo fi >> .git\hooks\pre-commit
echo git add site/_config.yml >> .git\hooks\pre-commit

REM Make the hook executable
echo Making hook executable...
cd .git\hooks
copy pre-commit pre-commit.bat > nul

echo Successfully set up Git hooks!
echo Now, every time you commit, version and last updated date will be automatically updated.
