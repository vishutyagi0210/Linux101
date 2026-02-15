# STEP 7 — Text Processing & Pipelines (UNIX SUPERPOWER)

## Goal of This Step

You must be able to extract, transform, and summarize text from logs, commands, and files — without opening an editor.

> **If you master this step, logs stop being noise and start being data.**

---

## Table of Contents

1. [The Unix Philosophy](#the-unix-philosophy-why-this-works)
2. [grep — Finding Signals in Noise](#grep--finding-signals-in-noise)
3. [awk — Structured Text Processor](#awk--structured-text-processor)
4. [sed — Stream Editor](#sed--stream-editor-transformation)
5. [cut — Quick Column Extraction](#cut--quick-column-extraction)
6. [sort, uniq, wc — Aggregation Trio](#sort-uniq-wc--aggregation-trio)
7. [tr — Translate / Clean](#tr--translate--clean)
8. [Real Pipelines](#real-pipelines-this-is-the-skill)
9. [Streaming & Live Logs](#streaming--live-logs)
10. [Practice Labs](#practice-labs-mandatory)
11. [Break-It Labs](#break-it-labs)
12. [Real-World Scenarios](#real-world-scenarios)
13. [Interview Questions](#interview-questions-real)

---

## The Unix Philosophy (WHY THIS WORKS)

Each tool does one thing well:

- `grep` → filter
- `awk` → process
- `sed` → transform
- `sort/uniq` → aggregate

👉 **Pipelines glue them together.**

---

## grep — Finding Signals in Noise

### Common Flags (MEMORIZE)

| Flag | Meaning |
|------|---------|
| `-i` | ignore case |
| `-v` | invert match |
| `-n` | line numbers |
| `-c` | count |
| `-r` | recursive |
| `-E` | extended regex |

### Example

```bash
grep -in "error" app.log
```

---

## awk — Structured Text Processor

### Default Separator: Whitespace

```bash
awk '{print $1, $3}' file
```

### Custom Separator

```bash
awk -F: '{print $1}' /etc/passwd
```

### Admin Reality

Most logs are:
Timestamp | Level | Message

👉 **Awk is perfect for this.**

---

## sed — Stream Editor (TRANSFORMATION)

### Substitution

```bash
sed 's/ERROR/WARN/g' app.log
```

### Delete Lines

```bash
sed '/DEBUG/d' app.log
```

### In-place Edit (DANGEROUS)

```bash
sed -i 's/foo/bar/g' file
```

⚠️ **Always test without `-i` first.**

---

## cut — Quick Column Extraction

```bash
cut -d: -f1 /etc/passwd
```

**Simple, fast, limited.**

---

## sort, uniq, wc — Aggregation Trio

```bash
sort file | uniq -c | sort -rn
```

### Count Lines

```bash
wc -l file
```

---

## tr — Translate / Clean

```bash
tr '[:lower:]' '[:upper:]'
```

### Remove Characters

```bash
tr -d '\r'
```

---

## Real Pipelines (THIS IS THE SKILL)

### Top 5 Errors from Log

```bash
grep ERROR app.log \
| awk '{$1=$2=$3=""; print}' \
| sort | uniq -c | sort -rn | head -5
```

👉 **This is interview gold.**

---

## Streaming & Live Logs

```bash
tail -f app.log | grep -i error
```

### Add Color

```bash
grep --color=auto
```

---

## Practice Labs (MANDATORY)

### Lab 1 — Log Dissection

1. Extract only ERROR lines
2. Print line numbers
3. Count occurrences

### Lab 2 — User Analysis

1. Extract usernames from `/etc/passwd`
2. Count users
3. Sort alphabetically

### Lab 3 — Transform Logs

1. Replace ERROR → WARN
2. Remove DEBUG lines

---

## Break-It Labs

1. Forget quotes in `awk`
2. Pipe without `pipefail`
3. Observe wrong success
4. Fix with strict mode

---

## Real-World Scenarios

### Scenario 1 — Incident Debugging

App is slow. Logs are huge.

**Goal:**
Find top recurring errors in 2 minutes.

### Scenario 2 — Compliance Report

Need count of failed logins today.

**Think about:**
- `grep`
- `awk`
- Date filter

---

## Interview Questions (REAL)

1. **Difference between `awk` and `cut`?**
2. **How to get top 5 errors from a log?**
3. **Why pipelines lie without `pipefail`?**
4. **When to use `sed` vs `awk`?**

🧪 PRACTICE LABS (MANDATORY)
Lab 1 — Log Dissection

Extract only ERROR lines

Print line numbers

Count occurrences

Lab 2 — User Analysis

Extract usernames from /etc/passwd

Count users

Sort alphabetically

Lab 3 — Transform Logs

Replace ERROR → WARN

Remove DEBUG lines

🔥 Break-It Labs

Forget quotes in awk

Pipe without pipefail

Observe wrong success

Fix with strict mode

🌍 Real-World Scenarios
Scenario 1 — Incident Debugging

App is slow. Logs are huge.

Goal:

Find top recurring errors in 2 minutes.

Scenario 2 — Compliance Report

Need count of failed logins today.

Think:

grep

awk

date filter

🎯 Interview Questions (REAL)

Difference between awk and cut?

How to get top 5 errors from a log?

Why pipelines lie without pipefail?

When to use sed vs awk?