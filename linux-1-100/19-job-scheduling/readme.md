# Chapter 19 – Job Scheduling (Command List)

This file contains essential Linux commands used to schedule, manage, and monitor recurring and one-time jobs using cron, at, and systemd timers.

## Table of Contents

__[Cron Basics](#cron-basics)__ | __[Crontab Management](#crontab-management)__ | __[Cron Job Examples](#cron-job-examples)__ | __[Cron Logs](#cron-logs)__ | __[at Jobs](#at-jobs)__ | __[at Job Management](#at-job-management)__ | __[systemd Timers](#systemd-timers)__ | __[Question List](#question-list)

---

## **Cron Basics**

```bash
crontab -l                    # List current user's cron jobs
crontab -e                    # Edit current user's cron jobs
crontab -r                    # Remove current user's cron jobs
```

## **Crontab Management**

```bash
crontab -u user -l            # List another user's cron jobs
crontab -u user -e            # Edit another user's cron jobs
systemctl status crond        # Check cron service status (RHEL-based)
systemctl status cron         # Check cron service status (Debian-based)
```

## **Cron Job Examples**

```bash
* * * * * command             # Run every minute
0 * * * * command             # Run every hour
0 0 * * * command             # Run daily at midnight
0 0 * * 0 command             # Run weekly
0 0 1 * * command             # Run monthly
```

## **Cron Logs**

```bash
journalctl -u crond           # View cron logs using journalctl
grep CRON /var/log/cron       # View cron logs (RHEL-based)
grep cron /var/log/syslog     # View cron logs (Debian-based)
```

## **at Jobs**

```bash
at now + 10 minutes           # Schedule one-time job
at 22:00                     # Schedule job at specific time
atq                          # List scheduled at jobs
```

## **at Job Management**

```bash
atrm job_id                  # Remove scheduled at job
systemctl status atd         # Check at daemon status
```

## **systemd Timers**

```bash
systemctl list-timers        # List active systemd timers
systemctl status timer       # Show timer status
systemctl start timer        # Start timer
systemctl enable timer       # Enable timer at boot
```

---
