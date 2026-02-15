# STEP 3 — Loops & Iteration (AUTOMATION MINDSET)

## Goal of This Step

You must be able to repeat actions safely, control flow, and avoid infinite or destructive loops.

> **Loops amplify mistakes — so discipline matters.**

---

## Table of Contents

1. [Why Loops Matter in Real Ops](#why-loops-matter-in-real-ops)
2. [for Loop — List Based](#for-loop--list-based)
3. [for Loop — C-Style](#for-loop--c-style)
4. [Looping Over Files](#looping-over-files-very-common)
5. [while Loop — Condition Based](#while-loop--condition-based)
6. [Reading Files Line by Line](#reading-files-line-by-line-critical-skill)
7. [until Loop](#until-loop-less-used)
8. [Loop Control](#loop-control)
9. [Infinite Loops](#infinite-loops-dangerous)
10. [Practice Labs](#practice-labs-mandatory)
11. [Break-It Labs](#break-it-labs)
12. [Real-World Scenarios](#real-world-scenarios)
13. [Interview Questions](#interview-questions)

---

## Why Loops Matter in Real Ops

### Without Loops

- One command = one task

### With Loops

- One script = hundreds of systems, files, services

👉 **Every admin script eventually becomes a loop.**

---

## for Loop — List Based

```bash
for item in apple banana mango; do
  echo "$item"
done
```

**Loop variable updates per iteration.**

### Real Use Cases

- Packages
- Users
- Files
- Services

---

## for Loop — C-Style

```bash
for ((i=1; i<=5; i++)); do
  echo "$i"
done
```

### Used For

- Counters
- Timers
- Fixed iterations

---

## Looping Over Files (VERY COMMON)

```bash
for file in *.log; do
  echo "$file"
done
```

### ⚠️ Breaks If

- No matching files
- Filenames contain spaces (rare but real)

### Safer Approach

```bash
shopt -s nullglob
```

---

## while Loop — Condition Based

```bash
while [ "$COUNT" -gt 0 ]; do
  echo "$COUNT"
  COUNT=$((COUNT - 1))
done
```

### Used When

- End condition is unknown
- Reading streams

---

## Reading Files Line by Line (CRITICAL SKILL)

```bash
while IFS= read -r line; do
  echo "$line"
done < file.txt
```

### Why This Is Correct

- Preserves spaces
- Prevents backslash escapes

---

## until Loop (LESS USED)

```bash
until ping -c1 google.com; do
  sleep 5
done
```

**Runs until condition becomes true.**

---

## Loop Control

### break
Exit loop immediately

```bash
break
```

### continue
Skip current iteration

```bash
continue
```

---

## Infinite Loops (DANGEROUS)

```bash
while true; do
  ...
done
```

### Use Only With

- `sleep` (to prevent CPU burn)
- Clear exit condition

---

## Practice Labs (MANDATORY)

### Lab 1 — File Processor

1. Loop through `.log` files
2. Print filename and size

### Lab 2 — Package Checker

1. Loop over package list
2. Check installed status

### Lab 3 — Countdown Timer

1. User input
2. Count down safely

---

## Break-It Labs

1. Create infinite loop accidentally
2. Observe CPU usage
3. Fix using `sleep` or condition

---

## Real-World Scenarios

### Scenario 1 — Log Cleanup

Delete logs older than 7 days safely.

**Think about:**
- Loop
- Confirmation
- Dry-run

### Scenario 2 — Bulk User Check

Check home directories for multiple users.

**Think about:**
- Loop + file tests

---

## Interview Questions

1. **Difference between `for` and `while`?**
2. **Why `read -r` in loops?**
3. **How to avoid infinite loops?**
4. **How to loop safely over files?**

3.8 Loop Control
break      # exit loop
continue   # skip iteration

3.9 Infinite Loops (DANGEROUS)
while true; do
  ...
done


Use only with:

sleep

Clear exit condition

🧪 PRACTICE LABS (MANDATORY)
Lab 1 — File Processor

Loop through .log files

Print filename and size

Lab 2 — Package Checker

Loop over package list

Check installed status

Lab 3 — Countdown Timer

User input

Count down safely

🔥 Break-It Labs

Create infinite loop accidentally

Observe CPU usage

Fix using sleep or condition

🌍 Real-World Scenarios
Scenario 1 — Log Cleanup

Delete logs older than 7 days safely.

Think:

Loop

Confirmation

Dry-run

Scenario 2 — Bulk User Check

Check home directories for multiple users.

Think:

Loop + file tests

🎯 Interview Questions

Difference between for and while?

Why read -r in loops?

How to avoid infinite loops?

How to loop safely over files?