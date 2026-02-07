# Chapter 28 – Shell Scripting and Automation (Command List)

This file contains essential Linux commands and constructs used for shell scripting, automation, and task execution.

## Table of Contents

__[Shell Basics](#shell-basics)__ | __[Script Creation](#script-creation)__ | __[Script Execution](#script-execution)__ | __[Variables](#variables)__ | __[Conditionals](#conditionals)__ | __[Loops](#loops)__ | __[Functions](#functions)__ | __[Automation Tools](#automation-tools)__

---

## **Shell Basics**

```bash
bash script.sh               # Run script using bash
sh script.sh                 # Run script using sh
echo "text"                  # Print output to terminal
```

## **Script Creation**

```bash
vi script.sh                 # Create shell script
nano script.sh               # Create shell script using nano
touch script.sh              # Create empty script file
```

## **Script Execution**

```bash
chmod +x script.sh           # Make script executable
./script.sh                  # Execute script
bash -x script.sh            # Debug script execution
```

## **Variables**

```bash
VAR=value                    # Define variable
echo $VAR                    # Access variable value
export VAR=value             # Export variable
```

## **Conditionals**

```bash
if [ condition ]; then       # If conditional block
elif [ condition ]; then     # Else-if block
else                         # Else block
fi                           # End conditional
```

## **Loops**

```bash
for i in list; do            # For loop
while condition; do          # While loop
until condition; do          # Until loop
done                         # End loop
```

## **Functions**

```bash
function fname() { }         # Define function
fname                        # Call function
return                       # Return value from function
```

## **Automation Tools**

```bash
cron                         # Schedule recurring jobs
at                           # Schedule one-time jobs
systemctl                    # Automate service control
```