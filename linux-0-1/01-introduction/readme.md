# Chapter 01 – Introduction to Linux (Command List)

This file contains the essential Linux commands used to identify and understand the operating system and user environment.

## Table of Contents

[System & OS Information](#system--os-information-commands) | [User & Login Information](#user--login-information) | [Hostname & Time](#hostname--time) | [Shell & Environment](#shell--environment) | [Basic Navigation](#basic-navigation) | [Root & User Switching](#root--user-switching) | [Help & Documentation](#help--documentation) | [Important System Files](#important-system-files-view-only) | [Directory Awareness](#directory-awareness) | [Question List](#question-list)

---

## **System & OS Information Commands**

```bash
cat /etc/os-release        # Display Linux distribution and version
hostnamectl               # Show hostname and OS details
uname -r                  # Show kernel version
uname -a                  # Show complete system information
arch                      # Show system architecture
uname -m                  # Show machine architecture
```

## **User & Login Information**

```bash
whoami                    # Display current logged-in user
id                        # Show user UID and group details
users                     # Show logged-in users
who                       # Show who is logged in
w                         # Show logged-in users with activity
```

## **Hostname & Time**

```bash
hostname                  # Display system hostname
date                      # Show current date and time
timedatectl               # Show and manage system time settings
uptime                    # Show system running time and load average
```

## **Shell & Environment**

```bash
echo $SHELL               # Show current shell
ps -p $$                  # Show current shell process
env                       # Display environment variables
printenv                  # Print environment variables
echo $PATH                # Show PATH variable
```

## **Basic Navigation**

```bash
pwd                       # Show current working directory
ls                        # List files and directories
cd                        # Change directory
clear                     # Clear terminal screen
```

## **Root & User Switching**

```bash
su                        # Switch to root user
su -                      # Switch to root with full environment
su username               # Switch to another user
sudo -i                   # Get root shell using sudo
sudo su                   # Switch to root using sudo
```

## **Help & Documentation**

```bash
man command               # Show manual page for command
command --help            # Show help for command
info command              # Show detailed documentation
```

## **Important System Files (View Only)**

```bash
cat /etc/passwd           # View user account information
cat /etc/group            # View group information
cat /etc/shells           # View available shells
cat /etc/hostname         # View system hostname
```

## **Directory Awareness**

```bash
ls /                      # List root directory
ls /home                  # List home directories
ls /etc                   # List configuration files
ls /var                   # List variable data and logs
ls /boot                  # List boot files
```

<video src="./github.mp4" width="600" controls></video>


---
<!-- # Chapter 01 – Introduction to Linux (Command List)

This file contains the essential Linux commands used to identify and understand the operating system and user environment.

## Table of Contents

| Section | Description |
|---------|-------------|
| [System & OS Information](#system--os-information-commands) | Display Linux distribution and system details |
| [User & Login Information](#user--login-information) | Check current users and login details |
| [Hostname & Time](#hostname--time) | System hostname and time management |
| [Shell & Environment](#shell--environment) | Shell and environment variables |
| [Basic Navigation](#basic-navigation) | Navigate the Linux filesystem |
| [Root & User Switching](#root--user-switching) | Switch between users and root |
| [Help & Documentation](#help--documentation) | Access command documentation |
| [Important System Files](#important-system-files-view-only) | View critical system files |
| [Directory Awareness](#directory-awareness) | Understand Linux directory structure |
| [Question List](#question-list) | Practice questions |

---

## **System & OS Information Commands**

```bash
cat /etc/os-release        # Display Linux distribution and version
hostnamectl               # Show hostname and OS details
uname -r                  # Show kernel version
uname -a                  # Show complete system information
arch                      # Show system architecture
uname -m                  # Show machine architecture
```

## **User & Login Information**

```bash
whoami                    # Display current logged-in user
id                        # Show user UID and group details
users                     # Show logged-in users
who                       # Show who is logged in
w                         # Show logged-in users with activity
```

## **Hostname & Time**

```bash
hostname                  # Display system hostname
date                      # Show current date and time
timedatectl               # Show and manage system time settings
uptime                    # Show system running time and load average
```

## **Shell & Environment**

```bash
echo $SHELL               # Show current shell
ps -p $$                  # Show current shell process
env                       # Display environment variables
printenv                  # Print environment variables
echo $PATH                # Show PATH variable
```

## **Basic Navigation**

```bash
pwd                       # Show current working directory
ls                        # List files and directories
cd                        # Change directory
clear                     # Clear terminal screen
```

## **Root & User Switching**

```bash
su                        # Switch to root user
su -                      # Switch to root with full environment
su username               # Switch to another user
sudo -i                   # Get root shell using sudo
sudo su                   # Switch to root using sudo
```

## **Help & Documentation**

```bash
man command               # Show manual page for command
command --help            # Show help for command
info command              # Show detailed documentation
```

## **Important System Files (View Only)**

```bash
cat /etc/passwd           # View user account information
cat /etc/group            # View group information
cat /etc/shells           # View available shells
cat /etc/hostname         # View system hostname
```

## **Directory Awareness**

```bash
ls /                      # List root directory
ls /home                  # List home directories
ls /etc                   # List configuration files
ls /var                   # List variable data and logs
ls /boot                  # List boot files
```

---

## **Question List**

1. What command shows the Linux distribution and version?
2. Which command displays the kernel version?
3. How do you check the current logged-in user?
4. What is the difference between uname -r and uname -a?
5. Which command shows system uptime?
6. How do you check the system architecture?
7. Which command shows the current shell?
8. What command lists environment variables?
9. How do you switch to root user?
10. What is the difference between su and sudo -i?
11. Which file contains user account information?
12. Which command shows the system hostname?
13. How do you display the PATH variable?
14. What command shows all logged-in users?
15. Which command is used to read the manual of another command?
16. What does whoami command do?
17. What is the purpose of /etc/os-release file?
18. Which directory contains configuration files?
19. What command clears the terminal screen?
20. How do you check date and time in Linux? -->