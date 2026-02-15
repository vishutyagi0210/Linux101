# STEP 0 — Foundations: Bash, Shell & Script Execution

## Goal of This Step

You must fully understand what runs your script, how it runs, and why it sometimes breaks.

> **If you get this step wrong, everything later becomes unreliable.**

---

## Table of Contents

1. [What Is a Shell (Really)?](#what-is-a-shell-really)
2. [What Is Bash?](#what-is-bash)
3. [Script vs Command (CRITICAL)](#script-vs-command-critical)
4. [The Shebang](#the-shebang-binbash--not-optional)
5. [Execution Methods](#execution-methods-you-must-know-all-3)
6. [Permissions & chmod +x](#permissions--chmod-x)
7. [PATH & Why ./ Matters](#path--why--matters)
8. [Practice Labs](#practice-labs-do-not-skip)
9. [Break-It Labs](#break-it-labs-important)
10. [Real-World Scenarios](#real-world-scenarios-to-solve)
11. [Interview Questions](#interview-questions-real-ones)
12. [Exit Criteria](#exit-criteria-very-important)

---

## What Is a Shell (Really)?

### Simple Definition (But Accurate)

A shell is:

> A program that takes your commands and passes them to the Linux kernel.

**Examples:**
- bash
- sh
- dash
- zsh

When you type:
```bash
ls
```

You are **not** talking to Linux directly — you are talking to the shell.

### Admin Reality Check 💡

Different shells:
- Parse commands differently
- Support different syntax
- Handle variables and arrays differently

👉 **A script that works in bash may fail in sh.**

---

## What Is Bash?

**Bash = Bourne Again SHell**

It is:
- A shell
- A scripting language
- The default shell on most Linux servers

**Check your shell:**
```bash
echo $SHELL
```

**Check running shell:**
```bash
ps -p $$
```

---

## Script vs Command (CRITICAL)

### Interactive Command

```bash
ls
```

**Runs:**
- Inside your current shell
- With your environment
- With your aliases

### Script Execution

```bash
./script.sh
```

**Runs:**
- In a new process
- With a new shell
- With limited environment

👉 **This difference causes 100s of "works in terminal, fails in script" bugs.**

---

## The Shebang (#!/bin/bash) — Not Optional

### What It Really Means

```bash
#!/bin/bash
```

**Tells Linux:**
> "Use this interpreter to run this file."

**Kernel logic:**
1. Sees executable file
2. Reads first line
3. Launches the interpreter

### Demo Lab 🔬

Create `test.sh`:
```bash
#!/bin/bash
echo "My shell is: $SHELL"
```

**Run:**
```bash
chmod +x test.sh
./test.sh
```

**Now remove shebang and run again.**

**What happens without shebang?**

The system uses:
- `/bin/sh`
- or your default shell
- Behavior becomes unpredictable

### Admin Incident (REAL)

A production backup script ran fine for months…

A system update changed `/bin/sh` from `bash` → `dash`

Entire backups silently failed.

**Root cause?**

❌ Missing shebang.

---

## Execution Methods (YOU MUST KNOW ALL 3)

| Method | Uses Shebang | Requires +x | Shell Used | Use Case |
|--------|--------------|-------------|------------|----------|
| `./script.sh` | ✔ | ✔ | From shebang | Production (preferred) |
| `bash script.sh` | ✗ | ✗ | bash | Testing, bypassing |
| `sh script.sh` | ✗ | ✗ | sh | Dangerous |

### Lab: Spot the Difference

Create:
```bash
#!/bin/bash
arr=(one two three)
echo ${arr[1]}
```

**Run with:**
```bash
./script.sh
bash script.sh
sh script.sh
```

**Observe failures.**

---

## Permissions & chmod +x

Linux treats scripts like any other binary.

**Permission needed:**
```bash
chmod +x script.sh
```

**Check:**
```bash
ls -l script.sh
```

### Admin Insight

Executable bit is a safety mechanism:
- Prevents accidental execution
- Forces intentional behavior

---

## PATH & Why ./ Matters

**Why this fails:**
```bash
script.sh
```

**But this works:**
```bash
./script.sh
```

**Because:**
- Current directory (`.`) is not in PATH by default
- Security reason (trojan prevention)

**Check PATH:**
```bash
echo $PATH
```

---

## Practice Labs (DO NOT SKIP)

### Lab 1 — Shell Identity

1. Print current shell
2. Print parent shell
3. Run from interactive and script

### Lab 2 — Shebang Failure

1. Write bash-only syntax
2. Remove shebang
3. Run with sh
4. Explain failure in your own words

### Lab 3 — Execution Matrix

Create a table:

| Method | Uses Shebang | Requires +x | Shell Used |
|--------|--------------|-------------|------------|
| | | | |

Fill it manually.

### Lab 4 — PATH Trap

1. Create script in `/tmp`
2. Try running without `./`
3. Fix using full path

---

## 🔥 Break-It Labs (IMPORTANT)

Write a script that:
1. Works in terminal
2. Fails when executed
3. Explain why it fails
4. Fix it without Googling

---

## 🌍 Real-World Scenarios to Solve

### Scenario 1

A script works when run manually but fails in cron.

**Questions:**
- Which shell is cron using?
- How do you fix it?

### Scenario 2

Script runs fine as root but fails as a normal user.

**Think:**
- PATH
- permissions
- environment

---

## 🎯 Interview Questions (REAL ONES)

1. Difference between `bash script.sh` and `./script.sh`?
2. What happens if the shebang points to a non-existent path?
3. Why is `/bin/sh` dangerous in Bash scripts?
4. How does cron decide which shell to use?

**If you can answer confidently, you're solid.**

---

## ✅ Step 0 Exit Criteria (VERY IMPORTANT)

You can move on only if:

- ✓ You know which shell runs your script
- ✓ You can predict script behavior before running it
- ✓ You understand why scripts fail in cron
- ✓ You never forget a shebang again

---