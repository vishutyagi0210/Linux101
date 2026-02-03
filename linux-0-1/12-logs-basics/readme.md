# Chapter 12 – Logs Basics (Command List)

This file contains essential Linux commands used to view, analyze, and manage system and application logs.

## Table of Contents

[Log Files](#log-files) | [Journalctl](#journalctl) | [View Logs](#view-logs) | [Search Logs](#search-logs) | [Log Rotation](#log-rotation) | [Question List](#question-list)

---

## **Log Files**

```bash
ls /var/log               # List all log files
cat /var/log/messages     # View system messages log
cat /var/log/syslog       # View system log (Debian/Ubuntu)
cat /var/log/secure       # View authentication log (RHEL/CentOS)
cat /var/log/auth.log     # View authentication log (Ubuntu)
```

---

## **Journalctl**

```bash
journalctl                # View all systemd logs
journalctl -xe            # View recent logs with details
journalctl -u sshd        # View logs for specific service
journalctl --since today  # View today’s logs
journalctl --boot         # View logs from current boot
```

---

## **View Logs**

```bash
less /var/log/messages    # View log file page by page
tail /var/log/messages    # Show last 10 lines of log file
tail -f /var/log/messages # Monitor log file in real time
head /var/log/messages    # Show first 10 lines of log file
```

---

## **Search Logs**

```bash
grep error /var/log/messages      # Search for word in log file
grep -i fail /var/log/secure      # Case-insensitive search
awk '{print $1,$2,$3}' /var/log/messages # Extract fields from logs
```

---

## **Log Rotation**

```bash
logrotate /etc/logrotate.conf     # Run log rotation manually
cat /etc/logrotate.conf           # View logrotate configuration
ls /etc/logrotate.d               # View logrotate rules
```

---

