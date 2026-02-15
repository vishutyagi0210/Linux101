# STEP 8 — System Automation & Admin Scripting

## Goal of This Step

You must be able to safely automate Linux system tasks — packages, services, resources — without breaking production.

> **This step teaches discipline + observability, not just commands.**

---

## Table of Contents

1. [Automation Principles](#automation-principles-read-this-first)
2. [Running as Root](#running-as-root-controlled-power)
3. [Package Management Automation](#package-management-automation)
4. [Service Management](#service-management)
5. [Resource Monitoring](#resource-monitoring-lightweight)
6. [Logging Script Actions](#logging-script-actions-mandatory)
7. [Idempotency](#idempotency-very-important)
8. [Practice Labs](#practice-labs-mandatory)
9. [Break-It Labs](#break-it-labs)
10. [Real-World Scenarios](#real-world-scenarios)
11. [Interview Questions](#interview-questions-real)

---

## Automation Principles (READ THIS FIRST)

Before touching the system, always ask:

1. **Is this safe to run twice?** (idempotency)
2. **What happens if it fails halfway?**
3. **Am I running as the right user?**
4. **Am I logging what I do?**

⚠️ **If you can't answer these → don't automate yet.**

---

## Running as Root (CONTROLLED POWER)

**Never assume root.**

```bash
if [ "$EUID" -ne 0 ]; then
  echo "Run as root"
  exit 1
fi
```

### Why?

- Prevent partial failures
- Avoid permission bugs

---

## Package Management Automation

### Debian-based

```bash
dpkg -s nginx &>/dev/null || apt install -y nginx
```

### RPM-based

```bash
rpm -q nginx &>/dev/null || yum install -y nginx
```

### Admin Rule

**Always:**
- Check before install
- Never assume internet
- Never prompt

---

## Service Management

### Check Status

```bash
systemctl is-active nginx
```

### Control

```bash
systemctl start nginx
systemctl enable nginx
```

### Script Logic

```bash
if systemctl is-active --quiet nginx; then
  echo "Running"
else
  systemctl start nginx
fi
```

---

## Resource Monitoring (LIGHTWEIGHT)

### Disk

```bash
df -h
```

### Memory

```bash
free -h
```

### CPU

```bash
top -b -n1 | head
```

---

## Logging Script Actions (MANDATORY)

```bash
LOG="/var/log/script.log"
echo "$(date): Starting check" >> "$LOG"
```

👉 **Never trust console output alone.**

---

## Idempotency (VERY IMPORTANT)

### ❌ Bad Script

```bash
useradd devops
```

### ✔️ Good Script

```bash
id devops &>/dev/null || useradd devops
```

---

## Practice Labs (MANDATORY)

### Lab 1 — Package Checker

1. Loop through package list
2. Install only if missing
3. Log actions

### Lab 2 — Service Guard

1. Check service
2. Restart if stopped
3. Log status

### Lab 3 — System Report

1. Hostname
2. OS
3. Disk usage
4. Memory usage
5. Top CPU processes

---

## Break-It Labs

1. Run script as non-root
2. Observe failures
3. Add root check
4. Fix cleanly

---

## Real-World Scenarios

### Scenario 1 — Drift Fix

Service randomly stops after reboot.

**Solution:**
- Enable service
- Monitor status

### Scenario 2 — Disk Full Alert

Server down due to full disk.

**Solution:**
- Detect
- Log
- Alert / cleanup

---

## Interview Questions (REAL)

1. **What is idempotency?**
2. **How to check service status in script?**
3. **Why must scripts log actions?**
4. **How to prevent partial failures?**

Before touching the system, always ask:

Is this safe to run twice? (idempotency)

What happens if it fails halfway?

Am I running as the right user?

Am I logging what I do?

If you can’t answer these → don’t automate yet.

8.2 Running as Root (CONTROLLED POWER)

Never assume root.

if [ "$EUID" -ne 0 ]; then
  echo "Run as root"
  exit 1
fi


Why:

Prevent partial failures

Avoid permission bugs

8.3 Package Management Automation
Debian-based
dpkg -s nginx &>/dev/null || apt install -y nginx

RPM-based
rpm -q nginx &>/dev/null || yum install -y nginx

Admin Rule

Always:

Check before install

Never assume internet

Never prompt

8.4 Service Management

Check status:

systemctl is-active nginx


Control:

systemctl start nginx
systemctl enable nginx


Script logic:

if systemctl is-active --quiet nginx; then
  echo "Running"
else
  systemctl start nginx
fi

8.5 Resource Monitoring (LIGHTWEIGHT)
Disk
df -h

Memory
free -h

CPU
top -b -n1 | head

8.6 Logging Script Actions (MANDATORY)
LOG="/var/log/script.log"
echo "$(date): Starting check" >> "$LOG"


Never trust console output alone.

8.7 Idempotency (VERY IMPORTANT)

Bad script:

useradd devops


Good script:

id devops &>/dev/null || useradd devops

🧪 PRACTICE LABS (MANDATORY)
Lab 1 — Package Checker

Loop through package list

Install only if missing

Log actions

Lab 2 — Service Guard

Check service

Restart if stopped

Log status

Lab 3 — System Report

Hostname

OS

Disk usage

Memory usage

Top CPU processes

🔥 Break-It Labs

Run script as non-root

Observe failures

Add root check

Fix cleanly

🌍 Real-World Scenarios
Scenario 1 — Drift Fix

Service randomly stops after reboot.

Solution:

Enable service

Monitor status

Scenario 2 — Disk Full Alert

Server down due to full disk.

Solution:

Detect

Log

Alert / cleanup

🎯 Interview Questions (REAL)

What is idempotency?

How to check service status in script?

Why must scripts log actions?

How to prevent partial failures?