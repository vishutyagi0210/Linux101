# STEP 2 — Conditionals, Tests & Decision Logic (ADMIN DEPTH)

## Goal of This Step

You must be able to correctly test conditions, predict outcomes, and avoid silent logic bugs.

> **Most Bash bugs are not crashes — they are wrong decisions.**

---

## Table of Contents

1. [if in Bash Is Not Magic](#if-in-bash-is-not-magic)
2. [The test Command and [ ]](#the-test-command-and--)
3. [String Comparisons](#string-comparisons)
4. [Integer Comparisons](#integer-comparisons-not--)
5. [File Tests](#file-tests-admin-gold)
6. [Logical Operators](#logical-operators)
7. [elif and Decision Trees](#elif-and-decision-trees)
8. [[[ ]] — Bash's Safer Test](#--bashs-safer-test-important)
9. [Practice Labs](#practice-labs-mandatory)
10. [Break-It Labs](#break-it-labs-build-instinct)
11. [Real-World Scenarios](#real-world-scenarios)
12. [Interview Questions](#interview-questions-real)

---

## if in Bash Is Not Magic

Bash does **not** evaluate conditions like other languages.

```bash
if command; then
  ...
fi
```

**Bash checks:**

Exit code of the command
0 = true, non-zero = false

### Example

```bash
if ls /tmp; then
  echo "Success"
fi
```

Not checking output — checking exit status.

---

## The test Command and [ ]

```bash
if [ condition ]; then
```

`[` is a command, not syntax.

### SPACING RULE (NON-NEGOTIABLE)

```bash
[ "$A" = "$B" ]   # correct
["$A"="$B"]       # wrong
```

### Why?

Bash parses words before evaluation

---

## String Comparisons

| Test | Meaning |
|------|---------|
| `=` | equal |
| `!=` | not equal |
| `-z` | string is empty |
| `-n` | string is not empty |

### Example

```bash
if [ -z "$NAME" ]; then
  echo "Empty"
fi
```

---

## Integer Comparisons (NOT > <)

### ❌ Wrong

```bash
if [ "$A" > "$B" ]; then
```

### ✔ Correct

```bash
if [ "$A" -gt "$B" ]; then
```

| Operator | Meaning |
|----------|---------|
| `-eq` | equal |
| `-ne` | not equal |
| `-lt` | less than |
| `-gt` | greater than |
| `-le` | ≤ |
| `-ge` | ≥ |

---

## File Tests (ADMIN GOLD)

| Test | Meaning |
|------|---------|
| `-f` | regular file |
| `-d` | directory |
| `-e` | exists |
| `-r` | readable |
| `-w` | writable |
| `-x` | executable |
| `-s` | not empty |

### Example

```bash
if [ -f "$FILE" ]; then
  echo "File exists"
fi
```

---

## Logical Operators

```bash
[ condition ] && do_this
[ condition ] || do_that
```

### Example

```bash
[ -f "$FILE" ] || echo "Missing file"
```

---

## elif and Decision Trees

```bash
if [ "$NUM" -gt 0 ]; then
  echo "Positive"
elif [ "$NUM" -lt 0 ]; then
  echo "Negative"
else
  echo "Zero"
fi
```

Order matters.

---

## [[ ]] — Bash's Safer Test (IMPORTANT)

```bash
if [[ "$A" == *.txt ]]; then
```

### Advantages

- No word splitting
- Pattern matching
- Safer quoting

Use `[[ ]]` in Bash scripts.

---

## Practice Labs (MANDATORY)

### Lab 1 — String vs Integer Bug

Test:

```bash
A=9
B=10
```

Compare using:
- `>`
- `-gt`

Explain result.

### Lab 2 — Empty Variable Trap

Write a script that:
- Tests empty variable
- Fails without quotes
- Works with quotes

### Lab 3 — File Test Matrix

Write script to:
- Check file exists
- Check readable
- Check executable

Test on `/etc/passwd`, `/bin/ls`.

---

## Break-It Labs (BUILD INSTINCT)

1. Remove spaces inside `[ ]`
2. Swap `=` and `-eq`
3. Observe behavior
4. Fix and explain

---

## Real-World Scenarios

### Scenario 1 — Broken Deployment

Script deploys even when config file is missing.

What test was missing?

### Scenario 2 — False Positive Health Check

Script says "healthy" but service is down.

Think:
- Checking output vs exit code

---

## Interview Questions (REAL)

1. **Why is `[ ]` spacing mandatory?**
2. **Difference between `[` and `[[`?**
3. **Why can't we use `>` for integers?**
4. **How does Bash decide true/false?**

2.1 if in Bash Is Not Magic

Bash does not evaluate conditions like other languages.

if command; then
  ...
fi


Bash checks:

Exit code of the command
0 = true, non-zero = false

Example
if ls /tmp; then
  echo "Success"
fi


Not checking output — checking exit status.

2.2 The test Command and [ ]
if [ condition ]; then


[ is a command, not syntax.

SPACING RULE (NON-NEGOTIABLE)
[ "$A" = "$B" ]   # correct
["$A"="$B"]       # wrong


Why?

Bash parses words before evaluation

2.3 String Comparisons
Test	Meaning
=	equal
!=	not equal
-z	string is empty
-n	string is not empty

Example:

if [ -z "$NAME" ]; then
  echo "Empty"
fi

2.4 Integer Comparisons (NOT > <)

❌ Wrong:

if [ "$A" > "$B" ]; then


✔ Correct:

if [ "$A" -gt "$B" ]; then

Operator	Meaning
-eq	equal
-ne	not equal
-lt	less than
-gt	greater than
-le	≤
-ge	≥
2.5 File Tests (ADMIN GOLD)
Test	Meaning
-f	regular file
-d	directory
-e	exists
-r	readable
-w	writable
-x	executable
-s	not empty

Example:

if [ -f "$FILE" ]; then
  echo "File exists"
fi

2.6 Logical Operators
[ condition ] && do_this
[ condition ] || do_that


Example:

[ -f "$FILE" ] || echo "Missing file"

2.7 elif and Decision Trees
if [ "$NUM" -gt 0 ]; then
  echo "Positive"
elif [ "$NUM" -lt 0 ]; then
  echo "Negative"
else
  echo "Zero"
fi


Order matters.

2.8 [[ ]] — Bash’s Safer Test (IMPORTANT)
if [[ "$A" == *.txt ]]; then


Advantages:

No word splitting

Pattern matching

Safer quoting

Use [[ ]] in Bash scripts.

🧪 PRACTICE LABS (MANDATORY)
Lab 1 — String vs Integer Bug

Test:

A=9
B=10


Compare using:

>

-gt

Explain result.

Lab 2 — Empty Variable Trap

Write a script that:

Tests empty variable

Fails without quotes

Works with quotes

Lab 3 — File Test Matrix

Write script to:

Check file exists

Check readable

Check executable

Test on /etc/passwd, /bin/ls.

🔥 Break-It Labs (BUILD INSTINCT)

Remove spaces inside [ ]

Swap = and -eq

Observe behavior

Fix and explain

🌍 Real-World Scenarios
Scenario 1 — Broken Deployment

Script deploys even when config file is missing.

What test was missing?

Scenario 2 — False Positive Health Check

Script says “healthy” but service is down.

Think:

Checking output vs exit code

🎯 Interview Questions (REAL)

Why is [ ] spacing mandatory?

Difference between [ and [[?

Why can’t we use > for integers?

How does Bash decide true/false?