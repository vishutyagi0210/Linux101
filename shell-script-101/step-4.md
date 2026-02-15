# STEP 4 — Command-Line Arguments & Non-Interactive Scripts

## Goal of This Step

You must be able to write scripts that:
- Accept input without prompts
- Fail fast with clear usage
- Can run from cron, systemd, CI/CD

> **This is where Bash becomes professional.**

---

## Table of Contents

1. [Why Arguments Matter](#why-arguments-matter-admin-reality)
2. [Argument Basics](#argument-basics-you-must-memorize-these)
3. [Validating Arguments](#validating-arguments-non-negotiable)
4. [$@ vs $*](#--vs--interview-favorite)
5. [Shifting Arguments](#shifting-arguments-shift)
6. [Mixing Arguments + Defaults](#mixing-arguments--defaults)
7. [Exit Codes](#exit-codes-script-communication)
8. [Practice Labs](#practice-labs-mandatory)
9. [Break-It Labs](#break-it-labs)
10. [Real-World Scenarios](#real-world-scenarios)
11. [Interview Questions](#interview-questions-real)

---

## Why Arguments Matter (Admin Reality)

Interactive scripts are fine for learning.
**Production scripts must be non-interactive.**

### Why?

- Cron can't answer prompts
- CI/CD can't type input
- Automation must be repeatable

---

## Argument Basics (You MUST memorize these)

| Variable | Meaning |
|----------|---------|
| `$0` | Script name |
| `$1` | First argument |
| `$2` | Second argument |
| `$#` | Number of arguments |
| `$@` | All arguments (separately quoted) |
| `$?` | Exit code of last command |

### Example

```bash
echo "Script: $0"
echo "First arg: $1"
echo "Total args: $#"
```

---

## Validating Arguments (NON-NEGOTIABLE)

**Never assume arguments exist.**

```bash
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi
```

👉 **This is professional hygiene.**

---

## $@ vs $* (INTERVIEW FAVORITE)

✔ **Correct:**
```bash
"$@"
```

❌ **Dangerous:**
```bash
"$*"
```

### Why?

- `$@` preserves argument boundaries
- `$*` merges arguments into one string

### Demo

```bash
set -- "a b" c
echo "$@"
echo "$*"
```

---

## Shifting Arguments (shift)

```bash
while [ "$#" -gt 0 ]; do
  echo "$1"
  shift
done
```

### Used For

- Parsing multiple arguments
- Flags (later)

---

## Mixing Arguments + Defaults

```bash
DIR="${1:-/tmp}"
```

### Meaning

- Use `$1` if provided
- Else use `/tmp`

---

## Exit Codes (SCRIPT COMMUNICATION)

| Code | Meaning |
|------|---------|
| `0` | Success |
| `1` | General error |
| `2` | Misuse of shell builtins |

### Example

```bash
exit 0
exit 1
```

### Why It Matters

Other tools depend on this:
- Cron
- systemd
- CI pipelines

---

## Practice Labs (MANDATORY)

### Lab 1 — Argument Greeter

1. Accept name as `$1`
2. Fail if missing
3. Print usage

### Lab 2 — File Checker

1. Accept filename
2. Check existence
3. Return proper exit code

### Lab 3 — Argument Counter

1. Print `$#`
2. Print `$@`
3. Observe behavior with spaces

---

## Break-It Labs

1. Use `$*` instead of `$@`
2. Pass arguments with spaces
3. Observe breakage
4. Fix and explain

---

## Real-World Scenarios

### Scenario 1 — Cron Failure

Script runs manually but fails in cron.

**Think about:**
- No interactive input
- Missing arguments
- Hardcoded paths

### Scenario 2 — CI Pipeline Bug

Script exits but pipeline still passes.

**Think about:**
- Exit codes
- `exit 0` vs `exit 1`

---

## Interview Questions (REAL)

1. **Difference between `$@` and `$*`?**
2. **Why must scripts validate arguments?**
3. **What is `$0` used for?**
4. **Why are exit codes important?**

Cron can’t answer prompts

CI/CD can’t type input

Automation must be repeatable

4.2 Argument Basics (You MUST memorize these)
Variable	Meaning
$0	Script name
$1	First argument
$2	Second argument
$#	Number of arguments
$@	All arguments (separately quoted)
$?	Exit code of last command
Example
echo "Script: $0"
echo "First arg: $1"
echo "Total args: $#"

4.3 Validating Arguments (NON-NEGOTIABLE)

Never assume arguments exist.

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi


This is professional hygiene.

4.4 $@ vs $* (INTERVIEW FAVORITE)
"$@"   # correct
"$*"   # dangerous


Why?

$@ preserves argument boundaries

$* merges arguments into one string

Demo:

set -- "a b" c
echo "$@"
echo "$*"

4.5 Shifting Arguments (shift)
while [ "$#" -gt 0 ]; do
  echo "$1"
  shift
done


Used for:

Parsing multiple arguments

Flags (later)

4.6 Mixing Arguments + Defaults
DIR="${1:-/tmp}"


Meaning:

Use $1 if provided

Else use /tmp

4.7 Exit Codes (SCRIPT COMMUNICATION)
Code	Meaning
0	Success
1	General error
2	Misuse of shell builtins

Example:

exit 0
exit 1


Other tools depend on this:

Cron

systemd

CI pipelines

🧪 PRACTICE LABS (MANDATORY)
Lab 1 — Argument Greeter

Accept name as $1

Fail if missing

Print usage

Lab 2 — File Checker

Accept filename

Check existence

Return proper exit code

Lab 3 — Argument Counter

Print $#

Print $@

Observe behavior with spaces

🔥 Break-It Labs

Use $* instead of $@

Pass arguments with spaces

Observe breakage

Fix and explain

🌍 Real-World Scenarios
Scenario 1 — Cron Failure

Script runs manually but fails in cron.

Think:

No interactive input

Missing arguments

Hardcoded paths

Scenario 2 — CI Pipeline Bug

Script exits but pipeline still passes.

Think:

Exit codes

exit 0 vs exit 1

🎯 Interview Questions (REAL)

Difference between $@ and $*?

Why must scripts validate arguments?

What is $0 used for?

Why are exit codes important?