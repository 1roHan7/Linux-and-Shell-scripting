# file_activity_logger
```
# Goal

Create a daily snapshot of files in a directory, so you can track changes (new files, deletions, etc.) by appending the ls output to a log file — along with timestamps.
```
## Tools & Concepts:
Linux shell (ls, date, echo)

Redirection operators: >, >>

Crontab (optional: to automate daily logs)
## How to Run
```bash
bash scripts/log_files.sh

#Example usage

bash scripts/log_files.sh                # Logs current directory
bash scripts/log_files.sh /etc/nginx     # Logs /etc/nginx directory
