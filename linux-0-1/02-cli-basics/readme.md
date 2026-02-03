# Chapter 02 – CLI Basics (Command List)

This file contains the essential Linux command-line commands used for navigation, command execution, history, redirection, and help.

## Table of Contents

[Directory & Navigation](#directory--navigation) | [Command Structure](#command-structure) | [Help & Documentation](#help--documentation) | [History & Shortcuts](#history--shortcuts) | [Auto Completion](#auto-completion) | [Multiple Commands & Operators](#multiple-commands--operators) | [Output Redirection](#output-redirection) | [Pipes](#pipes) | [Wildcards](#wildcards) | [Exit & Session Commands](#exit--session-commands) | [Question List](#question-list)

---

## **Directory & Navigation**

```bash
pwd                       # Show present working directory
ls                        # List files and directories
ls -l                     # List files with detailed information
ls -a                     # List all files including hidden files
ls -lh                    # List files in human readable format
cd                        # Change directory
cd /                      # Go to root directory
cd ~                      # Go to home directory
cd ..                     # Go to parent directory
cd -                      # Go to previous directory
```

## **Command Structure**

```bash
command -options arguments    # Basic Linux command format
```

**Example:**

```bash
ls -l /etc                  # List detailed contents of /etc directory
```

## **Help & Documentation**

```bash
man ls                    # Show manual page for ls
ls --help                 # Show help for ls command
help cd                   # Show help for built-in command
info ls                   # Show detailed documentation
```

## **History & Shortcuts**

```bash
history                   # Show command history
!!                        # Run the previous command
!5                        # Run command number 5 from history
!ls                       # Run the last ls command
clear                     # Clear terminal screen
reset                     # Reset terminal display
```

## **Auto Completion**

```bash
Tab                       # Auto-complete command or path
Tab Tab                   # Show all possible completions
```

## **Multiple Commands & Operators**

```bash
command1; command2        # Run commands sequentially
command1 && command2      # Run second command if first succeeds
command1 || command2      # Run second command if first fails
```

## **Output Redirection**

```bash
command > file            # Redirect output to file (overwrite)
command >> file           # Redirect output to file (append)
command < file            # Take input from file
```

## **Pipes**

```bash
command1 | command2       # Send output of one command to another
```

**Example:**

```bash
ls | wc -l                # Count number of files in directory
```

## **Wildcards**

```bash
*                         # Match all files
?                         # Match a single character
[abc]                     # Match any one character: a, b, or c
```

## **Exit & Session Commands**

```bash
exit                      # Exit the shell session
logout                    # Logout from the shell
```

---

## **Question List**

1. Which command shows the present working directory?
2. How do you list all files including hidden files?
3. What command lists files in human-readable format?
4. How do you go to the home directory?
5. What does `cd ..` do?
6. Which command shows command history?
7. How do you repeat the last executed command?
8. How do you run command number 5 from history?
9. What is the purpose of the `man` command?
10. What is the difference between `;` and `&&` operators?
11. What does `command1 | command2` do?
12. How do you redirect output to a file (overwrite)?
13. How do you append output to a file?
14. What is the wildcard `*` used for?
15. How do you auto-complete commands in Linux?
16. Which command clears the terminal screen?
17. What does the `reset` command do?
18. How do you display help for built-in commands?
19. What is the basic command structure in Linux?
20. How do you exit from a terminal session?