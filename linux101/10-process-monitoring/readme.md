# Chapter 10 – Process Monitoring (Command List)

This file contains essential Linux commands used to monitor system processes and performance.

## Table of Contents

[Process Information](#process-information) | [CPU & Memory Usage](#cpu--memory-usage) | [Process Control](#process-control) | [Background & Foreground](#background--foreground) | [System Load](#system-load) | [Question List](#question-list)

---

## **Process Information**

```bash
ps                      # Show running processes
ps aux                  # Show all processes with detailed info
ps -ef                  # Show processes in full format
top                     # Display running processes in real time
htop                    # Interactive process viewer (if installed)
```

---

## **CPU & Memory Usage**

```bash
top                     # Show CPU and memory usage
free -m                 # Show memory usage in MB
vmstat                  # Show memory and CPU statistics
iostat                  # Show CPU and disk I/O statistics
mpstat                  # Show CPU usage per processor
```

---

## **Process Control**

```bash
kill PID                # Kill a process by PID
kill -9 PID             # Force kill a process
pkill process_name      # Kill process by name
killall process_name    # Kill all instances of a process
```

---

## **Background & Foreground**

```bash
command &               # Run command in background
jobs                    # Show background jobs
fg %1                   # Bring job to foreground
bg %1                   # Resume job in background
```

---

## **System Load**

```bash
uptime                  # Show system uptime and load average
watch uptime            # Refresh uptime output
tload                   # Terminal load monitor (if installed)
```

---

