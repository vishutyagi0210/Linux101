# STEP 10 — Bash Interviews, Debugging Mindset & Senior Thinking

## Goal of This Step

You must be able to explain, debug, and defend your Bash scripts — not just write them.

> **Most interviews fail people not on syntax, but on reasoning.**

---

## Table of Contents

1. [How Bash Is Tested in Interviews](#how-bash-is-tested-in-interviews-reality)
2. [Core Bash Interview Areas](#core-bash-interview-areas-you-must-master)
3. [Common Interview Traps](#common-interview-traps-very-common)
4. [Debugging Under Pressure](#debugging-under-pressure-3-am-method)
5. [Read & Explain](#read--explain-interview-favorite)
6. [Senior-Level Bash Principles](#senior-level-bash-principles-write-these-down)
7. [Mock Interview Questions](#mock-interview-questions-real)
8. [Self-Assessment](#self-assessment-final-gate)

---

## How Bash Is Tested in Interviews (REALITY)

### Interviewers Usually Test

- Safety awareness
- Debugging ability
- Unix fundamentals
- Decision-making under ambiguity

### They Rarely Ask

"Write a full script from scratch"

### They Often Ask

- "Why did this break?"
- "What happens if…?"
- "How would you fix this?"

---

## Core Bash Interview Areas (YOU MUST MASTER)

### 🔹 Execution & Environment

- Shebang behavior
- Cron environment differences
- PATH issues
- Exported variables

### 🔹 Quoting & Expansion

- Word splitting
- Globbing
- Empty variable disasters

### 🔹 Logic & Tests

- `[ ]` vs `[[ ]]`
- Exit codes
- Silent failures

### 🔹 Automation Safety

- Idempotency
- Root checks
- Logging
- Cleanup

---

## Common Interview Traps (VERY COMMON)

### Trap 1 — "Why does this delete everything?"

```bash
rm -rf $DIR/*
```

**If `$DIR` is empty → 💥**

**Expected answer:**
- Quote variables
- Validate before delete

### Trap 2 — Cron Works Differently

```bash
tar -czf backup.tar.gz data/
```

**Fails in cron because:**
- Relative paths
- Missing PATH

### Trap 3 — Pipeline Lies

```bash
grep ERROR file | wc -l
```

**If file missing:**
- Returns `0`
- Script thinks all is well

**Fix:**
- `set -o pipefail`
- File existence check

---

## Debugging Under Pressure (3 AM Method)

### Step-by-step approach

1. Add `set -x`
2. Echo variables
3. Check exit codes
4. Reduce script to smallest failure
5. **Never guess. Observe.**

---

## Read & Explain (INTERVIEW FAVORITE)

### Given This Script

```bash
#!/bin/bash
set -e
FILE=$1
rm $FILE
echo "Done"
```

### Questions

- What can go wrong?
- How would you fix it?
- What happens if `$1` is empty?

👉 **Correct thinking > correct syntax.**

---

## Senior-Level Bash Principles (WRITE THESE DOWN)

1. Quote everything
2. Fail fast
3. Log actions
4. Never trust input
5. Assume scripts will be misused

---

## Mock Interview Questions (REAL)

### Conceptual

1. **Why is `set -euo pipefail` important?**
2. **Difference between interactive and non-interactive shells?**
3. **Why does cron break scripts?**

### Practical

1. **Write a script to check disk usage and exit non-zero if >80%**
2. **Parse a log and show top 3 errors**
3. **Debug a script that works manually but fails in cron**

---

## Self-Assessment (FINAL GATE)

✅ **You are Bash-ready if you can:**

- [ ] Explain script behavior before running it
- [ ] Debug failures without panic
- [ ] Write safe automation from scratch
- [ ] Explain why, not just how

**If yes → you're interview-ready.**



Debugging ability

Unix fundamentals

Decision-making under ambiguity

They rarely ask:

“Write a full script from scratch”

They often ask:

“Why did this break?”

“What happens if…?”

“How would you fix this?”

10.2 Core Bash Interview Areas (YOU MUST MASTER)
🔹 Execution & Environment

Shebang behavior

Cron environment differences

PATH issues

Exported variables

🔹 Quoting & Expansion

Word splitting

Globbing

Empty variable disasters

🔹 Logic & Tests

[ ] vs [[ ]]

Exit codes

Silent failures

🔹 Automation Safety

Idempotency

Root checks

Logging

Cleanup

10.3 Common Interview Traps (VERY COMMON)
Trap 1 — “Why does this delete everything?”
rm -rf $DIR/*


If $DIR is empty → 💥

Expected answer:

Quote variables

Validate before delete

Trap 2 — Cron Works Differently
tar -czf backup.tar.gz data/


Fails in cron because:

Relative paths

Missing PATH

Trap 3 — Pipeline Lies
grep ERROR file | wc -l


If file missing:

Returns 0

Script thinks all is well

Fix:

set -o pipefail

File existence check

10.4 Debugging Under Pressure (3 AM Method)
Step-by-step approach:

Add set -x

Echo variables

Check exit codes

Reduce script to smallest failure

Never guess. Observe.

10.5 Read & Explain (INTERVIEW FAVORITE)

Given this script:

#!/bin/bash
set -e
FILE=$1
rm $FILE
echo "Done"


Questions:

What can go wrong?

How would you fix it?

What happens if $1 is empty?

Correct thinking > correct syntax.

10.6 Senior-Level Bash Principles (WRITE THESE DOWN)

Quote everything

Fail fast

Log actions

Never trust input

Assume scripts will be misused

10.7 Mock Interview Questions (REAL)
Conceptual

Why is set -euo pipefail important?

Difference between interactive and non-interactive shells?

Why does cron break scripts?

Practical

Write a script to check disk usage and exit non-zero if >80%

Parse a log and show top 3 errors

Debug a script that works manually but fails in cron

10.8 Self-Assessment (FINAL GATE)

You are Bash-ready if you can:

 Explain script behavior before running it

 Debug failures without panic

 Write safe automation from scratch

 Explain why, not just how

If yes → you’re interview-ready.