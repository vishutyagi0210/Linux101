# Chapter 18 – Environment Variables and Profiles (Command List)

This file contains essential Linux commands used to view, manage, and persist environment variables and shell profile configurations.

## Table of Contents

__[Environment Variable Basics](#environment-variable-basics)__ | __[Viewing Environment Variables](#viewing-environment-variables)__ | __[Setting Variables](#setting-variables)__ | __[Exporting Variables](#exporting-variables)__ | __[Unsetting Variables](#unsetting-variables)__ | __[User Profile Files](#user-profile-files)__ | __[System-wide Profile Files](#system-wide-profile-files)__ | __[Reloading Profiles](#reloading-profiles)__ | __[Question List](#question-list)

---

## **Environment Variable Basics**

```bash
env                          # Display environment variables
printenv                     # Print environment variables
set                          # Show shell variables and functions
```

## **Viewing Environment Variables**

```bash
echo $PATH                   # Display PATH variable
echo $HOME                   # Display home directory
echo $USER                   # Display current user
printenv PATH                # Display specific variable
env | grep PATH              # Search environment variables
```

## **Setting Variables**

```bash
VAR=value                    # Set shell variable for current session
MYVAR=test                   # Example variable assignment
```

## **Exporting Variables**

```bash
export VAR=value             # Export variable to child processes
export PATH=$PATH:/opt/bin   # Append directory to PATH
```

## **Unsetting Variables**

```bash
unset VAR                    # Remove environment variable
```

## **User Profile Files**

```bash
cat ~/.bashrc                # User non-login shell configuration
cat ~/.bash_profile          # User login shell configuration
cat ~/.profile               # POSIX-compliant profile
```

## **System-wide Profile Files**

```bash
cat /etc/profile             # System-wide login profile
cat /etc/bashrc              # System-wide bash configuration
cat /etc/environment         # Global environment variables
```

## **Reloading Profiles**

```bash
source ~/.bashrc             # Reload bash configuration
. ~/.bashrc                  # Reload using dot command
exec bash                    # Restart current shell
```

---
