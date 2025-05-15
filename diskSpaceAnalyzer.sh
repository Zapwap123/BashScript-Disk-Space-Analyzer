#!/bin/bash

# Disk Space Analyzer Script
# This script analyzes disk space usage in a specified directory.
# It lists the top 10 largest directories and files.
# Usage: ./diskSpaceAnalyzer.sh [path]
# If no path is given, uses the current directory.

# Set target directory and if no argument is provided, use the current directory
targetDir="${1:-.}"

# Validate the directory 
if [ ! -d "$targetDir" ]; then
  echo "Error: '$targetDir' is not a valid directory."
  exit 1
fi

echo "Analyzing disk usage in: $targetDir"
echo "==============================="
echo

# Show top 10 largest directories
echo "Top 10 Largest Directories:"
du -h --max-depth=1 "$targetDir" 2>/dev/null | sort -hr | head -n 10
echo
echo "==============================="
echo

# Show top 10 largest files
echo "Top 10 Largest Files:"
find "$targetDir" -type f -exec du -h {} + 2>/dev/null | sort -hr | head -n 10
