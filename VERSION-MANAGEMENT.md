# Version Auto-Update System

This repository includes an automatic version management system that updates the version number and the "last updated" date in your `docs/_config.yml` file.

## Repository Structure

- `/docs` - Contains the actual Jekyll website files (published via GitHub Pages)
- `/scripts` - Contains utility scripts like version management
- Root level - Contains documentation and setup files

## How It Works

- The system uses Git hooks to automatically update the version and last updated date before each commit.
- Every time you make a commit, the version's build number will increment and the last updated date will be set to the current date.
- The script updates `site/_config.yml` and adds it to your commit.

## Setup Instructions

### Option 1: Using VS Code Tasks (Recommended)

1. Open this repository in VS Code
2. Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac) to open the command palette
3. Type `Tasks: Run Task` and select it
4. Select `Setup Version Auto-Update` from the list

### Option 2: Manual Setup

#### Windows:
1. Run the `setup-hooks.bat` file by double-clicking it or running it in Command Prompt

#### Mac/Linux:
1. Open a terminal in the repository root
2. Run `chmod +x setup-hooks.sh` to make the script executable
3. Run `./setup-hooks.sh`

## Manually Bumping the Version

If you need to bump the version without making a commit:

1. In VS Code, press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
2. Type `Tasks: Run Task` and select it
3. Select `Bump Version Manually`

## Disabling Version Auto-Update

If you need to disable the automatic version updating:

### Option 1: Using VS Code Tasks (Recommended)

1. Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac) to open the command palette
2. Type `Tasks: Run Task` and select it
3. Select `Remove Version Auto-Update` from the list

### Option 2: Manual Method

#### Windows:
1. Run the `unsetup-hooks.bat` file by double-clicking it or running it in Command Prompt

#### Mac/Linux:
1. Open a terminal in the repository root
2. Run `chmod +x unsetup-hooks.sh` to make the script executable
3. Run `./unsetup-hooks.sh`

## Version Format

The version follows the format `major.minor.patch.build`:
- For alphabetic build identifiers (like "a", "b", "c"), it will increment to the next letter.
- For numeric build identifiers (like "1", "2", "3"), it will increment to the next number.

## Requirements

- Node.js must be installed on your system
- Git must be installed
