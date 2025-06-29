#!/bin/bash


LOGFILE=./systemhealth.log

echo [CPU and  Memory INFO] >> LOGFILE
top  | head -5 >> LOGFILE
echo [Uptime]>> LOGFILE
uptime >> LOGFILE
echo [disk utilization] >> LOGFILE
df -h >> LOGFILE
