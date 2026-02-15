# Shell-Script101 🚀

> **Zero → Hero Bash Scripting | Admin‑Grade | Interview‑Ready | Production‑Focused**

This repository is a **complete, structured, real‑world Bash scripting roadmap**.
If you **finish everything here honestly**, you can confidently say:

> ✅ *“I understand Bash scripting — not just syntax, but how it’s used in real Linux systems.”*

This is **NOT** a cheat‑code repo.
This is a **learn‑by‑building, break‑and‑fix, admin‑mindset** journey.

---

## 🎯 Who This Is For

* Linux beginners who want **real skills**
* DevOps / Cloud learners tired of shallow Bash tutorials
* Sysadmins who want **clean, safe, reusable scripts**
* Anyone preparing for **Linux / DevOps interviews**

If you can do everything here → you are **above average** already.

---

## 🧠 How to Use This Repository (IMPORTANT)

Follow **in order**. Do not jump.

1. Read the concept
2. Write the script **yourself**
3. Break it intentionally
4. Fix it
5. Document what you learned

👉 Bash mastery comes from *mistakes*, not copy‑paste.

---

## 🧩 Learning Path Overview

```
Foundations  →  Control Flow  →  Safety  →  Automation
     ↓              ↓             ↓           ↓
 Text Tools     Functions     Strict Mode   Projects
     ↓              ↓             ↓           ↓
           Logs • Backup • Cron • Reports
```

---

## 📁 Repository Structure

```
Shell-Script101/
├── 00-basics/
├── 01-variables-input/
├── 02-conditionals/
├── 03-loops/
├── 04-arguments/
├── 05-functions/
├── 06-error-handling/
├── 07-text-processing/
├── 08-system-automation/
├── 09-projects/
├── 10-interview-prep/
└── README.md
```

---

## 00️⃣ Foundations – Bash Basics

### Concepts

* What is a shell vs Bash
* Script vs command execution
* Shebang (`#!/bin/bash`) — why it matters
* Executable permission (`chmod +x`)

### Practice Labs

* Write your first script
* Run with `./script.sh` vs `bash script.sh`
* Remove shebang and observe behavior

### Real‑World Scenario

> Production scripts fail because the wrong shell was used.

### Interview Questions

* Why is shebang required?
* Difference between `sh` and `bash`?

---

## 01️⃣ Variables & User Input

### Concepts

* Variables and assignment rules
* Quoting: `$VAR` vs `"$VAR"` vs `'${VAR}'`
* `read` and interactive input

### Practice Labs

* Greeting script
* Role‑based message
* Quote‑breaking experiment

### Real‑World Scenario

> Incorrect quoting causes data corruption and security bugs.

### Interview Questions

* Why should variables be quoted?
* What happens if a variable is unset?

---

## 02️⃣ Conditionals & File Tests

### Concepts

* `if / elif / else`
* String vs integer comparison
* File tests: `-f -d -e -r -w -x`

### Practice Labs

* Number checker
* File existence checker
* Service status checker

### Real‑World Scenario

> Scripts must **verify state** before acting.

### Interview Questions

* Difference between `=` and `-eq`?
* Why `[ ]` spacing matters?

---

## 03️⃣ Loops – Automating Repetition

### Concepts

* `for`, `while`, `until`
* Looping over files and commands
* `break` and `continue`

### Practice Labs

* Countdown script
* Loop through packages
* Loop through log files

### Real‑World Scenario

> Automation = loops + safety checks.

### Interview Questions

* When to use `while` over `for`?

---

## 04️⃣ Command‑Line Arguments

### Concepts

* `$0 $1 $2 $# $@ $?`
* Argument validation

### Practice Labs

* Greet script with arguments
* Usage message handling

### Real‑World Scenario

> Production scripts **never** rely on interactive input.

### Interview Questions

* `$@` vs `$*`?
* Why validate arguments?

---

## 05️⃣ Functions & Modularity

### Concepts

* Writing functions
* Passing arguments
* `local` variables
* Return vs echo

### Practice Labs

* Math functions
* Disk & memory checker

### Real‑World Scenario

> Maintainability matters more than cleverness.

### Interview Questions

* Why use functions in Bash?
* Scope of variables?

---

## 06️⃣ Error Handling & Safe Scripting

### Concepts

* Exit codes
* `set -e`, `set -u`, `set -o pipefail`
* Root user checks

### Practice Labs

* Safe directory creation
* Root‑only script enforcement

### Real‑World Scenario

> Silent failures are worse than crashes.

### Interview Questions

* What does `set -euo pipefail` do?

---

## 07️⃣ Text Processing (ADMIN SUPERPOWER)

### Tools

* `grep`, `awk`, `sed`, `cut`
* `sort`, `uniq`, `tr`, `wc`

### Practice Labs

* Parse log files
* Extract error patterns
* Count occurrences

### Real‑World Scenario

> Logs are the **truth source** in production.

### Interview Questions

* How to find top 5 errors from a log?

---

## 08️⃣ System Automation

### Concepts

* Package installation
* Service checks
* Disk, memory, CPU monitoring

### Practice Labs

* Install‑if‑missing script
* System info reporter

### Real‑World Scenario

> Bash glues tools together in real ops.

---

## 09️⃣ Projects (REAL ADMIN WORK)

### Projects

* Log rotation script
* Backup & cleanup automation
* Maintenance scheduler
* Log analyzer & report generator

### Skills Gained

* End‑to‑end scripting
* Cron scheduling
* Safe automation mindset

---

## 🔟 Interview Preparation

### Must‑Know Topics

* Quoting rules
* Exit codes
* `set -euo pipefail`
* Pipes & text tools
* Cron basics

### Common Interview Tasks

* Parse logs
* Check service health
* Automate cleanup

---

## 🧪 Final Self‑Assessment

You are **Bash‑ready** if you can:

* Write scripts without Googling syntax
* Debug broken scripts confidently
* Read other people’s Bash code
* Automate Linux admin tasks safely

If yes → 🎉 **You are no longer a beginner.**

---

## 📌 Final Advice from a Senior Linux Admin

> Bash is not about fancy syntax.
> Bash is about **control, safety, and clarity**.

Write boring scripts.
Make them predictable.
Log everything.

That’s how production survives.

---

## ⭐ Final Words

If you truly complete **Shell‑Script101**:

✅ You can automate Linux systems
✅ You can survive Bash interviews
✅ You can read production scripts without fear

Welcome to the **real Bash world** 🐧💻
