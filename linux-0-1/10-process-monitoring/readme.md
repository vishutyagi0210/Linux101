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

## **Question List**

1. Which command shows running processes?
2. How do you view all processes with detailed information?
3. Which command shows processes in real time?
4. How do you display memory usage?
5. Which command shows CPU and disk I/O statistics?
6. How do you kill a process using PID?
7. Which command force kills a process?
8. How do you kill a process by name?
9. Which command shows background jobs?
10. How do you bring a job to foreground?
11. How do you resume a job in background?
12. Which command shows system load average?
13. Which command refreshes uptime output?
14. What is the use of free command?
15. What does vmstat show?
16. Which command lists CPU usage per processor?
17. Which command monitors processes interactively?
18. How do you run a command in background?
19. Which command shows all processes in full format?
20. Which command shows system performance in real time?