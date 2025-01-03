#!/bin/bash

# This script attempts to process a list of files, but contains a subtle bug.

files=("file1.txt" "file2.txt" "file3.txt")

for i in "${files[@]}"; do
  # The bug is here: the 'if' condition uses string comparison instead of file existence check
  if [ "$i" = "file2.txt" ]; then
    echo "Processing $i..."
    # Simulate some processing. Replace with actual commands
    sleep 1
  fi

  #Correct way to check if file exists
  if [ -f "$i" ]; then
    echo "File $i exists"
  else
    echo "File $i does not exist"
  fi
done