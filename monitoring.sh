#!/bin/bash

# Author: Mehul Srivastava
# Roll No: 2501730149
# Date: 16/11/2025
# Purpose: Logs CPU and memory usage using the 'top' command into system_usage.log

logfile="$HOME/system_usage.log"   # Creates a log file in home directory

while true                         # Creates an infinite loop
do
    echo "-----$(date)-----" >> "$logfile"     # Appends current date & time
    top -b -n1 | head -n 5 >> "$logfile"       # Logs top 5 lines of top command
    echo "" >> "$logfile"                      # Adds a blank line
    sleep 10                                   # Waits 10 seconds before next log
done
