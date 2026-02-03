# Chapter 08 – Editors & Shell (Command List)

This file contains essential Linux commands related to text editors and shell features.

## Table of Contents

[VI/VIM Editor](#vivim-editor) | [Nano Editor](#nano-editor) | [Gedit Editor](#gedit-editor) | [Shell Features](#shell-features) | [History & Aliases](#history--aliases) | [Environment Variables](#environment-variables) | [Question List](#question-list)

---

## **VI/VIM Editor**

```bash
vi file.txt               # Open file in vi editor
vim file.txt              # Open file in vim editor
i                         # Insert mode
Esc                       # Exit insert mode
:w                        # Save file
:q                        # Quit editor
:wq                       # Save and quit
:q!                       # Quit without saving
dd                        # Delete a line
yy                        # Copy a line
p                         # Paste copied line
u                         # Undo last change
/word                     # Search for a word
```

## **Nano Editor**

```bash
nano file.txt             # Open file in nano editor
Ctrl + O                  # Save file
Ctrl + X                  # Exit nano editor
Ctrl + W                  # Search text
Ctrl + K                  # Cut line
Ctrl + U                  # Paste line
```

## **Gedit Editor**

```bash
gedit file.txt            # Open file in gedit editor (GUI)
```

## **Shell Features**

```bash
bash                      # Start bash shell
sh                        # Start sh shell
exec bash                 # Replace current shell with bash
clear                     # Clear terminal screen
reset                     # Reset terminal screen
```

## **History & Aliases**

```bash
history                   # Show command history
!!                        # Run previous command
!5                        # Run command number 5 from history
alias ll='ls -l'          # Create alias
unalias ll                # Remove alias
```

## **Environment Variables**

```bash
env                       # Show environment variables
printenv                  # Print environment variables
echo $SHELL               # Show current shell
echo $PATH                # Show PATH variable
export VAR=value          # Set environment variable
```

## **Shell Configuration Files**

```bash
~/.bashrc                 # User bash configuration file
~/.bash_profile           # User login configuration file
/etc/profile              # System-wide profile file
```

