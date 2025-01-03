#!/bin/bash

# This script correctly processes a list of files, checking for existence before processing.

files=("file1.txt" "file2.txt" "file3.txt")

for i in "${files[@]}"; do
  # Correct way to check if file exists
  if [ -f "$i" ]; then
    echo "Processing $i..."
    # Simulate some processing. Replace with actual commands
    sleep 1
  else
    echo "Skipping $i - file not found."
  fi
done