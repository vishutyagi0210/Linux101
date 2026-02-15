# STEP 6 — Error Handling, Exit Codes & Strict Mode (PRODUCTION SAFETY)

## Goal of This Step

You must ensure your scripts:
- Fail fast
- Fail loudly
- Fail safely

> **A script that hides errors is more dangerous than no script.**

---

## Table of Contents

1. [Exit Codes — The Language of Unix](#exit-codes--the-language-of-unix)
2. [exit in Scripts](#exit-in-scripts)
3. [The Silent Failure Problem](#the-silent-failure-problem)
4. [set -e — Exit on Error](#set-e--exit-on-error)
5. [set -u — Catch Undefined Variables](#set-u--catch-undefined-variables)
6. [set -o pipefail — Catch Pipeline Errors](#set-o-pipefail--catch-pipeline-errors)
7. [The Holy Trinity](#the-holy-trinity-memorize)
8. [Controlled Error Handling](#controlled-error-handling--and--)
9. [Traps — Cleanup on Exit](#traps--cleanup-on-exit-advanced-but-important)
10. [Practice Labs](#practice-labs-mandatory)
11. [Break-It Labs](#break-it-labs-this-builds-instinct)
12. [Real-World Scenarios](#real-world-scenarios)
13. [Interview Questions](#interview-questions-real)

---

## Exit Codes — The Language of Unix

Every command returns an exit code.

| Exit Code | Meaning |
|-----------|---------|
| `0` | Success |
| `1+` | Failure (varies by command) |

### Check Last Command

```bash
echo $?
```

### Admin Reality

- Cron
- systemd
- CI/CD
- Monitoring tools

👉 **They don't read output — they read exit codes.**

---

## exit in Scripts

```bash
exit 0   # success
exit 1   # failure
```

### Use Different Codes

```bash
exit 2   # invalid arguments
exit 3   # missing file
```

**This makes debugging 10× easier.**

---

## The Silent Failure Problem

### Default Bash Behavior

```bash
cp /no/such/file /tmp
echo "Backup done"
```

❌ **Even though cp failed, script continues.**

👉 **This is how data loss happens.**

---

## set -e — Exit on Error

```bash
set -e
```

### Meaning

Exit immediately if any command fails.

### Demo

```bash
set -e
mkdir /tmp/test
cd /no/such/dir
echo "This will never run"
```

### Admin Warning ⚠️

`set -e` is powerful but not magic.

It does **NOT** exit if:
- Command is in `if`
- Command is in `while`
- Command is part of `&&` / `||`

---

## set -u — Catch Undefined Variables

```bash
set -u
```

### This

- Treats unset variables as errors
- Prevents empty-variable disasters

### Example

```bash
rm "$TARGET"
```

If `$TARGET` is unset → script exits. ✔️ **Good.**

---

## set -o pipefail — Catch Pipeline Errors

### Default

```bash
false | true
echo $?   # 0 (LIE)
```

### With pipefail

```bash
set -o pipefail
false | true
echo $?   # non-zero (TRUTH)
```

---

## The Holy Trinity (MEMORIZE)

```bash
set -euo pipefail
```

👉 **This should be default for serious scripts.**

---

## Controlled Error Handling (|| and &&)

```bash
mkdir /tmp/test || echo "Already exists"
```

**This is intentional error handling, not ignoring errors.**

---

## Traps — Cleanup on Exit (ADVANCED BUT IMPORTANT)

```bash
cleanup() {
  rm -f /tmp/tempfile
}

trap cleanup EXIT
```

### Runs

- On success
- On failure
- On Ctrl+C

---

## Practice Labs (MANDATORY)

### Lab 1 — Silent Failure Demo

1. Run failing command
2. Observe script continues
3. Fix with `set -e`

### Lab 2 — Undefined Variable Bomb

1. Enable `set -u`
2. Access unset variable
3. Observe behavior

### Lab 3 — Pipeline Lie

1. Run pipeline with failing first command
2. Enable `pipefail`
3. Compare results

---

## Break-It Labs (THIS BUILDS INSTINCT)

1. Write script without strict mode
2. Introduce failure
3. Observe misleading success
4. Add `set -euo pipefail`
5. Observe honesty

---

## Real-World Scenarios

### Scenario 1 — Backup Disaster

Backup script prints "Completed" but no backup exists.

**Cause:**
- No strict mode
- Ignored exit code

**Fix:**
- `set -e`
- Validate output

### Scenario 2 — CI Pipeline Bug

Pipeline passes even when deploy failed.

**Think about:**
- Exit codes
- Pipefail
- `|| true` misuse

---

## Interview Questions (REAL)

1. **What does `set -euo pipefail` do?**
2. **Why is `pipefail` important?**
3. **When does `set -e` not exit?**
4. **Why is silent failure dangerous?**

Every command returns an exit code.

Exit Code	Meaning
0	Success
1+	Failure (varies by command)

Check last command:

echo $?

Admin Reality

Cron

systemd

CI/CD

Monitoring tools

👉 They don’t read output — they read exit codes.

6.2 exit in Scripts
exit 0   # success
exit 1   # failure


Use different codes for different failures:

exit 2   # invalid arguments
exit 3   # missing file


This makes debugging 10× easier.

6.3 The Silent Failure Problem

Default Bash behavior:

cp /no/such/file /tmp
echo "Backup done"


Even though cp failed, script continues.

❌ This is how data loss happens.

6.4 set -e — Exit on Error
set -e


Meaning:

Exit immediately if any command fails.

Demo
set -e
mkdir /tmp/test
cd /no/such/dir
echo "This will never run"

Admin Warning ⚠

set -e is powerful but not magic.

It does NOT exit if:

Command is in if

Command is in while

Command is part of && / ||

6.5 set -u — Catch Undefined Variables
set -u


This:

Treats unset variables as errors

Prevents empty-variable disasters

Example:

rm "$TARGET"


If $TARGET is unset → script exits.

Good.

6.6 set -o pipefail — Catch Pipeline Errors

Default:

false | true
echo $?   # 0 (LIE)


With pipefail:

set -o pipefail
false | true
echo $?   # non-zero (TRUTH)

6.7 The Holy Trinity (MEMORIZE)
set -euo pipefail


This should be default for serious scripts.

6.8 Controlled Error Handling (|| and &&)
mkdir /tmp/test || echo "Already exists"


This is intentional error handling, not ignoring errors.

6.9 Traps — Cleanup on Exit (ADVANCED BUT IMPORTANT)
cleanup() {
  rm -f /tmp/tempfile
}

trap cleanup EXIT


Runs:

On success

On failure

On Ctrl+C

🧪 PRACTICE LABS (MANDATORY)
Lab 1 — Silent Failure Demo

Run failing command

Observe script continues

Fix with set -e

Lab 2 — Undefined Variable Bomb

Enable set -u

Access unset variable

Observe behavior

Lab 3 — Pipeline Lie

Run pipeline with failing first command

Enable pipefail

Compare results

🔥 Break-It Labs (THIS BUILDS INSTINCT)

Write script without strict mode

Introduce failure

Observe misleading success

Add set -euo pipefail

Observe honesty

🌍 Real-World Scenarios
Scenario 1 — Backup Disaster

Backup script prints “Completed” but no backup exists.

Cause:

No strict mode

Ignored exit code

Fix:

set -e

Validate output

Scenario 2 — CI Pipeline Bug

Pipeline passes even when deploy failed.

Think:

Exit codes

Pipefail

|| true misuse

🎯 Interview Questions (REAL)

What does set -euo pipefail do?

Why is pipefail important?

When does set -e not exit?

Why is silent failure dangerous?