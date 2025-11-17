#!/bin/bash

# Author: Mehul Srivastava
# Roll No: 2501730149
# Date: 16/11/2025
# Purpose: Creates a backup of a given directory and stores it in ~/backups

source_dir="$1"                     # Takes directory name from the user
backup_dir="$HOME/backups"          # Location where backups will be stored

mkdir -p "$backup_dir"              # Creates the backup directory if it doesn't exist

timestamp=$(date +%Y-%m-%d_%H-%M-%S)      # Generates timestamp
dest="$backup_dir/backup_$timestamp"      # Defines backup destination folder

cp -r "$source_dir" "$dest"         # Recursively copies files to destination

echo "Backup completed! Directory copied to: $dest"
