# STEP 1 — Variables, Quoting & User Input (REAL DEPTH)

## Goal of This Step

You must understand how Bash stores data, how it expands it, and how quoting controls behavior.

> **If Step 0 decides what runs your script, Step 1 decides whether your script is safe or a time bomb.**

---

## Table of Contents

1. [Variables in Bash](#variables-in-bash-not-what-you-think)
2. [Environment Variables vs Shell Variables](#environment-variables-vs-shell-variables)
3. [Quoting (WHERE PEOPLE LIE ON RESUMES)](#quoting--this-is-where-people-lie-on-resumes)
4. [The Most Important Bash Rule](#the-most-important-bash-rule-memorize-this)
5. [Word Splitting & Globbing](#word-splitting--globbing-silent-killers)
6. [Command Substitution](#command-substitution)
7. [User Input with read](#user-input-with-read)
8. [Input Validation](#input-validation-admin-mindset)
9. [Practice Labs](#practice-labs-mandatory)
10. [Break-It Labs](#break-it-labs-this-builds-depth)
11. [Real-World Scenarios](#real-world-scenarios)
12. [Interview Questions](#interview-questions-real)

---

## Variables in Bash (Not What You Think)

### Syntax (Strict Rules)

```bash
NAME="Shubham"
ROLE="DevOps Engineer"
```

### ❌ Wrong

```bash
NAME = "Shubham"
```

### Why?

- Bash treats spaces as command separators
- `NAME=` is assignment
- `NAME =` is nonsense

### Variable Expansion

```bash
echo $NAME
```

This is **string substitution**, not evaluation.

---

## Environment Variables vs Shell Variables

### Shell Variable

```bash
CITY="Delhi"
```

**Available:**
- Only in current shell

### Environment Variable

```bash
export CITY="Delhi"
```

**Available:**
- Child processes
- Scripts

### Test It

```bash
CITY="Delhi"
bash -c 'echo $CITY'   # empty

export CITY="Delhi"
bash -c 'echo $CITY'   # Delhi
```

### Admin Reality

Cron, systemd, Docker — all run with minimal environment.

👉 **If you don't export, it does not exist.**

---

## Quoting (THIS IS WHERE PEOPLE LIE ON RESUMES)

### 3 Types of Quotes (YOU MUST MASTER)

#### 1️⃣ Double Quotes `" "`  (MOST USED)

```bash
echo "Hello $NAME"
```

**Features:**
- ✔ Variable expansion
- ✔ Command substitution
- ✔ Word splitting prevented

#### 2️⃣ Single Quotes `' '` (LITERAL)

```bash
echo '$NAME'
```

**Features:**
- ❌ No expansion
- ❌ No substitution
- ✔ Exact string

#### 3️⃣ No Quotes (DANGEROUS)

```bash
echo $NAME
```

**Issues:**
- ❌ Word splitting
- ❌ Globbing (*)
- ❌ Injection risk

---

## The Most Important Bash Rule (MEMORIZE THIS)

### **Always quote variables unless you explicitly need splitting**

### ✔ Correct

```bash
rm "$FILE"
```

### ❌ Wrong

```bash
rm $FILE
```

**If `$FILE=""` → disaster.**

---

## Word Splitting & Globbing (Silent Killers)

### Word Splitting Example

```bash
FILE="my file.txt"
rm $FILE
```

**Becomes:**
```bash
rm my file.txt
```

⚠️ Two arguments  
⚠️ Script fails or deletes wrong files

### Globbing Example

```bash
VAR="*"
echo $VAR
```

**Outputs:**
```bash
file1 file2 file3
```

👉 This is not magic, it's dangerous.

---

## Command Substitution

### ❌ Old Style (DO NOT USE)

```bash
DATE=`date`
```

### ✔ Correct

```bash
DATE=$(date)
```

### Why?

- Nestable
- Readable
- Less error-prone

---

## User Input with `read`

### Basic

```bash
read NAME
```

### Better

```bash
read -p "Enter name: " NAME
```

### Safer

```bash
read -r INPUT
```

### Why `-r`?

- Prevents backslash escaping
- Important for file paths

---

## Input Validation (ADMIN MINDSET)

### Never Trust User Input

```bash
if [ -z "$NAME" ]; then
  echo "Name cannot be empty"
  exit 1
fi
```

---

## Practice Labs (MANDATORY)

### Lab 1 — Quote Explosion

Create:
```bash
NAME="Dev Ops"
echo $NAME
echo "$NAME"
```

**Task:**
Explain why output differs.

### Lab 2 — Dangerous rm Simulation

```bash
FILE=""
echo rm "$FILE"
echo rm $FILE
```

**Task:**
Explain what would happen.

### Lab 3 — Globbing Trap

```bash
VAR="*"
echo "$VAR"
echo $VAR
```

**Task:**
Explain difference.

### Lab 4 — Export Reality

1. Define variable
2. Call child shell
3. Observe behavior

---

## Break-It Labs (THIS BUILDS DEPTH)

Write a script that:
- Works with quoted variable
- Breaks when quotes removed
- Fix it
- Explain what expanded and why

---

## Real-World Scenarios

### Scenario 1 — Backup Failure

Backup script deletes wrong directory.

**Clue:**
- Variable empty
- Missing quotes

**Task:**
Explain how this happens.

### Scenario 2 — Cron Bug

Script works manually, fails in cron.

**Think about:**
- `$PATH`
- Exported variables
- `.bashrc` not sourced

---

## Interview Questions (REAL)

1. **Difference between `$VAR`, `"$VAR"`, and `'${VAR}'`?**
2. **Why should variables always be quoted?**
3. **What is word splitting?**
4. **Why is `read -r` important?**
5. **Difference between shell and environment variables?**

> If you can answer calmly, you're ahead of many "DevOps Engineers".
