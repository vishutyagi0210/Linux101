# STEP 5 — Functions, Modularity & Code Structure (PRO LEVEL)

## Goal of This Step

You must be able to write Bash scripts that are:
- Readable
- Reusable
- Debuggable
- Safe to extend

> **If your script is 300 lines without functions — it's already broken.**

---

## Table of Contents

1. [Why Functions Matter](#why-functions-matter-admin-reality)
2. [Function Syntax](#function-syntax-correct-way)
3. [Passing Arguments to Functions](#passing-arguments-to-functions)
4. [Return Values vs Output](#return-values-vs-output-critical-distinction)
5. [Local vs Global Variables](#local-vs-global-variables-silent-bug-source)
6. [Script Structure](#script-structure-best-practice)
7. [Sourcing vs Executing](#sourcing-vs-executing)
8. [Practice Labs](#practice-labs-mandatory)
9. [Break-It Labs](#break-it-labs)
10. [Real-World Scenarios](#real-world-scenarios)
11. [Interview Questions](#interview-questions-real)

---

## Why Functions Matter (ADMIN REALITY)

### Without Functions

- Duplicate code
- Hard debugging
- Risky edits

### With Functions

- Clear logic
- Easier testing
- Safer changes

---

## Function Syntax (CORRECT WAY)

```bash
greet() {
  echo "Hello $1"
}
```

### Call

```bash
greet "Shubham"
```

---

## Passing Arguments to Functions

### Inside Function

`$1`, `$2` are function arguments, not script arguments

### Example

```bash
add() {
  echo $(( $1 + $2 ))
}
```

---

## Return Values vs Output (CRITICAL DISTINCTION)

### return

Returns exit code only (0–255)

```bash
check_file() {
  [ -f "$1" ]
}
```

### echo

Returns data via stdout

```bash
get_date() {
  echo "$(date)"
}
```

### Capture

```bash
DATE=$(get_date)
```

---

## Local vs Global Variables (SILENT BUG SOURCE)

```bash
myfunc() {
  local VAR="inside"
}
```

### Without local

- Variable leaks
- Breaks other functions

---

## Script Structure (BEST PRACTICE)

```bash
#!/bin/bash
set -euo pipefail

function_one() { ... }
function_two() { ... }

main() {
  function_one
  function_two
}

main "$@"
```

👉 **This is interview-grade structure.**

---

## Sourcing vs Executing

```bash
source utils.sh
# or
. utils.sh
```

### Used For

- Shared functions
- Config files

⚠️ **Never source untrusted scripts.**

---

## Practice Labs (MANDATORY)

### Lab 1 — Refactor Script

1. Take old script
2. Break into functions
3. Add `main()`

### Lab 2 — Return vs Echo

1. Write function returning status
2. Write function returning data
3. Use both correctly

### Lab 3 — Variable Leak Demo

1. Function without `local`
2. Observe global pollution
3. Fix with `local`

---

## Break-It Labs

1. Forget `local`
2. Call function twice
3. Observe unexpected behavior
4. Fix and explain

---

## Real-World Scenarios

### Scenario 1 — Production Hotfix

Need to change one behavior without breaking whole script.

**Solution:**
Functions make this safe.

### Scenario 2 — Shared Utilities

Multiple scripts need same logic.

**Solution:**
Source shared file

---

## Interview Questions (REAL)

1. **Why can't functions return strings?**
2. **Difference between `return` and `echo`?**
3. **What happens if you don't use `local`?**
4. **Why call `main "$@"`?**

5.1 Why Functions Matter (ADMIN REALITY)

Without functions:

Duplicate code

Hard debugging

Risky edits

With functions:

Clear logic

Easier testing

Safer changes

5.2 Function Syntax (CORRECT WAY)
greet() {
  echo "Hello $1"
}


Call:

greet "Shubham"

5.3 Passing Arguments to Functions

Inside function:

$1, $2 are function arguments, not script arguments

Example:

add() {
  echo $(( $1 + $2 ))
}

5.4 Return Values vs Output (CRITICAL DISTINCTION)
return

Returns exit code only (0–255)

check_file() {
  [ -f "$1" ]
}

echo

Returns data via stdout

get_date() {
  echo "$(date)"
}


Capture:

DATE=$(get_date)

5.5 Local vs Global Variables (SILENT BUG SOURCE)
myfunc() {
  local VAR="inside"
}


Without local:

Variable leaks

Breaks other functions

5.6 Script Structure (BEST PRACTICE)
#!/bin/bash
set -euo pipefail

function_one() { ... }
function_two() { ... }

main() {
  function_one
  function_two
}

main "$@"


This is interview-grade structure.

5.7 Sourcing vs Executing
source utils.sh
# or
. utils.sh


Used for:

Shared functions

Config files

⚠ Never source untrusted scripts.

🧪 PRACTICE LABS (MANDATORY)
Lab 1 — Refactor Script

Take old script

Break into functions

Add main()

Lab 2 — Return vs Echo

Write function returning status

Write function returning data

Use both correctly

Lab 3 — Variable Leak Demo

Function without local

Observe global pollution

Fix with local

🔥 Break-It Labs

Forget local

Call function twice

Observe unexpected behavior

Fix and explain

🌍 Real-World Scenarios
Scenario 1 — Production Hotfix

Need to change one behavior without breaking whole script.

Functions make this safe.

Scenario 2 — Shared Utilities

Multiple scripts need same logic.

Solution:

Source shared file

🎯 Interview Questions (REAL)

Why can’t functions return strings?

Difference between return and echo?

What happens if you don’t use local?

Why call main "$@"?