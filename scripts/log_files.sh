#!/bin/bash

TARGET_DIR="${1:-$(pwd)}"  
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOG_DIR="/mnt/c/Users/rohan/Software Engineer/file_activity_logger/logs"
LOG_FILE="$LOG_DIR/file_log.txt"
mkdir -p "$LOG_DIR"

# ❗ Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "[❌] Error: Directory '$TARGET_DIR' does not exist."
  exit 1
fi

TIMESTAMP="$(TZ='Asia/Kolkata' date +'%Y-%m-%d %H:%M:%S')"

#logging header

echo "----------------------------------" >> "$LOG_FILE"
echo "snapshot time: $TIMESTAMP" >> "$LOG_FILE"
echo "Directory: $TARGET_DIR" >> "$LOG_FILE"
echo "----------------------------------" >> "$LOG_FILE"

#list files with details,sorted by modification time
ls -lh --sort=time "$TARGET_DIR" >> "$LOG_FILE"

echo -e "\n" >> "$LOG_FILE"
echo "log updated at $TIMESTAMP for $TARGET_DIR" 