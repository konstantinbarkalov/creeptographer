/**
 * Script to update version and last_updated date in _config.yml
 * This script is meant to be run as a pre-commit hook
 */
const fs = require('fs');
const path = require('path');

// Path to _config.yml relative to the repo root
const configPath = path.join(__dirname, '..', 'docs', '_config.yml');

// Read the config file
let configContent = fs.readFileSync(configPath, 'utf8');

// Get current date in YYYY-MM-DD format
const today = new Date().toISOString().split('T')[0];

// Update the last_updated date
configContent = configContent.replace(
    /last_updated:.*$/m,
    `last_updated: ${today}`
);

// Version update logic - Increment the last digit
// Assumes version format like 0.0.0.a or 1.2.3.4
const versionRegex = /version:\s*"([0-9]+)\.([0-9]+)\.([0-9]+)\.([a-zA-Z0-9]+)"/;
const versionMatch = configContent.match(versionRegex);

if (versionMatch) {
    const major = versionMatch[1];
    const minor = versionMatch[2];
    const patch = versionMatch[3];
    let build = versionMatch[4];
    
    // If the build is a "incrementable" letter, increment it (a->b, etc.)
    if (/^[a-yA-Y]$/.test(build)) {
        build = String.fromCharCode(build.charCodeAt(0) + 1);
    }
    // If the build is a number, increment it numerically
    else if (/^[0-9]+$/.test(build)) {
        build = (parseInt(build) + 1).toString();
    }
    // If the build is ends up with "unincrementable" character, append 'a' to the end of build text    
    else {
        build += 'a';
    }

    const newVersion = `${major}.${minor}.${patch}.${build}`;
    configContent = configContent.replace(
        versionRegex,
        `version: "${newVersion}"`
    );
    
    console.log(`Version updated to ${newVersion}`);
} else {
    console.error('Could not parse version format');
}

// Write the updated config back to the file
fs.writeFileSync(configPath, configContent, 'utf8');
console.log(`Updated last_updated date to ${today}`);

// Exit successfully
process.exit(0);
