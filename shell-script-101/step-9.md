# STEP 9 — Real-World Bash Projects (PROOF OF SKILL)

## Goal of This Step

You must be able to take an open-ended admin problem, design a solution, and implement it safely in Bash.

> **If you finish Step 9 properly, you can show your scripts to a senior admin without embarrassment.**

---

## Table of Contents

1. [How to Approach These Projects](#how-to-approach-these-projects-read-this)
2. [Project 1 — Log Rotation Script](#project-1--log-rotation-script)
3. [Project 2 — Backup & Retention Script](#project-2--backup--retention-script)
4. [Project 3 — Maintenance Orchestrator](#project-3--maintenance-orchestrator)
5. [Project 4 — Log Analyzer & Report Generator](#project-4--log-analyzer--report-generator-capstone)
6. [Mandatory Enhancements](#mandatory-enhancements-do-these)
7. [Break-It Challenges](#break-it-challenges-this-is-where-you-learn)
8. [Real-World Scenarios](#real-world-scenarios)
9. [Interview Questions](#interview-questions-project-level)

---

## How to Approach These Projects (READ THIS)

**Before writing code, always answer:**

1. What is the input?
2. What is the output?
3. What can go wrong?
4. How do I fail safely?
5. How will I debug this at 3 AM?

⚠️ **If you skip this thinking → scripts become dangerous.**

---

## Project 1 — Log Rotation Script

### Problem

Logs grow endlessly and fill disk.

### Requirements

- Take log directory as argument
- Compress `.log` files older than 7 days
- Delete `.gz` files older than 30 days
- Print summary counts
- Exit if directory doesn't exist

### Skills Tested

- Arguments
- `find`
- Safe deletion
- Counting
- Exit codes

### Real-World Twist

**What happens if log filenames contain spaces?**

Think before coding.

---

## Project 2 — Backup & Retention Script

### Problem

Servers need regular backups with cleanup.

### Requirements

- Source + destination as arguments
- Timestamped `.tar.gz`
- Verify archive creation
- Remove backups older than 14 days
- Fail if source missing

### Skills Tested

- `tar`
- Date handling
- Error checking
- File lifecycle management

### Real-World Twist

**What if disk is full during backup?**

How will your script behave?

---

## Project 3 — Maintenance Orchestrator

### Problem

Multiple admin tasks must run daily.

### Requirements

- Call log rotation
- Call backup
- Log all actions
- Run safely from cron

### Skills Tested

- Functions
- Logging
- Script composition
- Cron awareness

---

## Project 4 — Log Analyzer & Report Generator (CAPSTONE)

### Problem

Admins need daily insight from logs.

### Requirements

- Accept log file as argument
- Validate input
- Count ERROR / FAILED
- Extract CRITICAL with line numbers
- Show top 5 error messages
- Generate dated report
- Archive processed logs

### Skills Tested

- Arguments
- Pipelines
- Text processing
- Reporting
- Script structure

### Why This Matters

This project alone can:
- Pass interviews
- Impress seniors
- Reveal real skill gaps

---

## Mandatory Enhancements (DO THESE)

**For every project, add:**

- `set -euo pipefail`
- Root check (if needed)
- Clear usage message
- Logging
- Meaningful exit codes

---

## Break-It Challenges (THIS IS WHERE YOU LEARN)

1. Run from cron
2. Run with missing arguments
3. Run with wrong permissions
4. Run twice (idempotency test)
5. Introduce a failure — observe behavior

---

## Real-World Scenarios

### Scenario 1 — Partial Failure

Backup succeeded but cleanup failed.

**Question:**
- Should script exit?
- Should it warn?
- Explain your decision.

### Scenario 2 — Incident Review

Log analyzer missed critical errors.

**Think about:**
- Case sensitivity
- Grep patterns
- Pipeline failures

---

## Interview Questions (PROJECT-LEVEL)

1. **How do you design a safe automation script?**
2. **How do you test Bash scripts?**
3. **How do you debug a cron failure?**
4. **How do you prevent destructive commands?**

> **If you can explain your design decisions, you're solid.**

🔧 Project 1 — Log Rotation Script
Problem

Logs grow endlessly and fill disk.

Requirements

Take log directory as argument

Compress .log files older than 7 days

Delete .gz files older than 30 days

Print summary counts

Exit if directory doesn’t exist

Skills Tested

Arguments

find

Safe deletion

Counting

Exit codes

Real-World Twist

What happens if log filenames contain spaces?

Think before coding.

🔧 Project 2 — Backup & Retention Script
Problem

Servers need regular backups with cleanup.

Requirements

Source + destination as arguments

Timestamped .tar.gz

Verify archive creation

Remove backups older than 14 days

Fail if source missing

Skills Tested

tar

Date handling

Error checking

File lifecycle management

Real-World Twist

What if disk is full during backup?

How will your script behave?

🔧 Project 3 — Maintenance Orchestrator
Problem

Multiple admin tasks must run daily.

Requirements

Call log rotation

Call backup

Log all actions

Run safely from cron

Skills Tested

Functions

Logging

Script composition

Cron awareness

🔧 Project 4 — Log Analyzer & Report Generator (CAPSTONE)
Problem

Admins need daily insight from logs.

Requirements

Accept log file as argument

Validate input

Count ERROR / FAILED

Extract CRITICAL with line numbers

Show top 5 error messages

Generate dated report

Archive processed logs

Skills Tested

Arguments

Pipelines

Text processing

Reporting

Script structure

This project alone can:

Pass interviews

Impress seniors

Reveal real skill gaps

🧪 Mandatory Enhancements (DO THESE)

For every project, add:

set -euo pipefail

Root check (if needed)

Clear usage message

Logging

Meaningful exit codes

🔥 Break-It Challenges (THIS IS WHERE YOU LEARN)

Run from cron

Run with missing arguments

Run with wrong permissions

Run twice (idempotency test)

Introduce a failure — observe behavior

🌍 Real-World Scenarios
Scenario 1 — Partial Failure

Backup succeeded but cleanup failed.

Question:

Should script exit?

Should it warn?

Explain your decision.

Scenario 2 — Incident Review

Log analyzer missed critical errors.

Think:

Case sensitivity

Grep patterns

Pipeline failures

🎯 Interview Questions (PROJECT-LEVEL)

How do you design a safe automation script?

How do you test Bash scripts?

How do you debug a cron failure?

How do you prevent destructive commands?

If you can explain your design decisions, you’re solid.