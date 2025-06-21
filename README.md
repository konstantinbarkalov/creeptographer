# Creeptographer Project

This repository contains the Creeptographer project - a multilingual website for a short film project.

## Repository Structure

- `site/` - Contains the Jekyll-based website that is deployed via GitHub Pages
  - `site/en/`, `site/ru/`, `site/th/` - Language-specific content
  - `site/_includes/` - Reusable components and content fragments
  - `site/_layouts/` - Page templates
  - `site/css/` - Stylesheets
  - `site/img/` - Images and media files
- `scripts/` - Contains utility scripts for version management
- `VERSION-MANAGEMENT.md` - Documentation for the version management system
- `setup-hooks.bat` & `setup-hooks.sh` - Scripts to install Git hooks for automated version management

## Development

The website is built with Jekyll and hosted on GitHub Pages. The content is available in multiple languages:
- English
- Russian
- Thai

## Version Management

This project includes an automatic version management system. For details on how to use it, see [VERSION-MANAGEMENT.md](VERSION-MANAGEMENT.md).

To set up the automatic version updating:

1. Run `setup-hooks.bat` (Windows) or `./setup-hooks.sh` (macOS/Linux)
2. After setup, every commit will automatically update the version and last updated date

## GitHub Pages Configuration

The site is published using GitHub Pages from the `/site` subfolder and can be accessed at:
https://konstantinbarkalov.github.io/creeptographer/

To configure GitHub Pages to use the `site` folder:
1. Go to your GitHub repository settings
2. Navigate to the "Pages" section
3. Under "Source", select "Deploy from a branch"
4. Select your main branch (e.g., "main")
5. Select the "/site" folder from the dropdown
6. Click "Save"
