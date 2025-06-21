@echo off
echo Removing Git hooks for version management...

REM Check if pre-commit hooks exist
if exist ".git\hooks\pre-commit" (
    echo Removing pre-commit hook...
    del /f ".git\hooks\pre-commit"
) else (
    echo No pre-commit hook found.
)

if exist ".git\hooks\pre-commit.bat" (
    echo Removing pre-commit.bat hook...
    del /f ".git\hooks\pre-commit.bat"
) else (
    echo No pre-commit.bat hook found.
)

echo Hook removal complete!
echo Version auto-updates are now disabled for this repository.
