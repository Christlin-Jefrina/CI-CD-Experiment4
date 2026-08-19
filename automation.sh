#!/bin/bash

LOG_FILE="automation.log"

echo "==================================" >> "$LOG_FILE"
echo "Automation executed successfully" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
echo "==================================" >> "$LOG_FILE"

echo "Automation completed successfully."
echo "Log saved to $LOG_FILE"
