# Chapter 01 – Introduction to Linux (Detailed Guide)

## Table of Contents

[System & OS Information](#1-system-and-operating-system-identification) | [User & Login Information](#2-user-and-login-information) | [Hostname & Time](#3-hostname-time-and-uptime) | [Shell & Environment](#4-shell-and-environment) | [Basic Navigation](#5-basic-filesystem-navigation)

---

## Objective

This chapter provides a foundational understanding of a Linux system.  
It focuses on identifying the operating system, understanding user context, navigating the system, and recognizing critical system components.

By the end of this chapter, the reader should be able to:
- Identify the Linux distribution, kernel, and architecture
- Understand user identity and login context
- Verify hostname, time, and system uptime
- Understand the shell and environment variables
- Navigate the Linux filesystem safely
- Understand privilege escalation basics
- Locate and recognize important system files and directories

---

## 1. System and Operating System Identification

Linux systems vary by distribution and kernel version.  
Correctly identifying the OS is essential for administration, troubleshooting, and automation.

### 1.1 Distribution Information

```bash
cat /etc/os-release
```

Standard OS identification file

Available on all modern Linux distributions

Used by automation tools and installers

Key fields:

NAME – Distribution name

VERSION – OS version

ID – Distribution identifier

### 1.2 Host and OS Details

```bash
hostnamectl
```

Displays:

Hostname

Operating system

Kernel

Architecture

This command is preferred on systemd-based systems.

### 1.3 Kernel Information

```bash
uname -r
uname -a
```

uname -r shows the kernel release

uname -a shows complete system information

Kernel version impacts:

Hardware compatibility

Filesystem support

Security features

Container behavior

### 1.4 System Architecture

```bash
arch
uname -m
```

Shows CPU architecture (e.g., x86_64, aarch64).

Architecture determines:

Package compatibility

Binary execution

Performance characteristics

## 2. User and Login Information

Linux is a multi-user operating system.
Understanding user identity is critical for security and permissions.

### 2.1 Current User Identity

```bash
whoami
id
```

whoami displays the effective user

id displays UID, GID, and group memberships

Group membership directly affects access control.

### 2.2 Logged-in Users

```bash
users
who
w
```

users shows logged-in users

who shows login sessions

w shows activity and system load

Unexpected users or activity may indicate security or performance issues.

## 3. Hostname, Time, and Uptime

Correct hostname and time configuration are critical for logging, authentication, and distributed systems.

### 3.1 Hostname

```bash
hostname
```

Identifies the system on the network

Appears in logs and monitoring systems

### 3.2 Date and Time

```bash
date
timedatectl
```

date displays current system time

timedatectl manages timezone and NTP settings

Incorrect time can cause:

Log inconsistencies

Authentication failures

Certificate validation issues

### 3.3 System Uptime

```bash
uptime
```

Displays:

System running time

Load average

Useful for detecting reboots and system stress.

## 4. Shell and Environment

The shell is the primary interface for interacting with Linux.

### 4.1 Identifying the Shell

```bash
echo $SHELL
ps -p $$
```

$SHELL shows default login shell

ps -p $$ shows the currently running shell

Shell behavior affects scripting and command execution.

### 4.2 Environment Variables

```bash
env
printenv
echo $PATH
```

Environment variables influence:

Command execution

Application behavior

Runtime configuration

PATH defines where the shell looks for executables.

## 5. Basic Filesystem Navigation

Understanding location within the filesystem is essential before performing administrative actions.

```bash
pwd
ls
cd
clear
```

pwd shows current directory

ls lists directory contents

cd changes directory

clear resets terminal display

Always verify the working directory before executing critical commands.

## 6. Root Access and User Switching

Linux enforces privilege separation.

### 6.1 Using su

```bash
su
su -
su username
```

Switches user identity

Requires target user password

su - provides a full login environment

### 6.2 Using sudo

```bash
sudo -i
sudo su
```

Uses the current user's password

Controlled via /etc/sudoers

Actions are logged and auditable

Best practice is to prefer sudo over direct root login.

## 7. Help and Documentation

Linux provides built-in documentation for nearly all commands.

```bash
man command
command --help
info command
```

man provides authoritative documentation

--help provides quick usage information

info provides structured documentation

Man pages should be the first reference source.

## 8. Important System Files (Read-Only)

Certain system files define users, groups, and system behavior.

### 8.1 User Accounts

```bash
cat /etc/passwd
```

Contains user account definitions

Passwords are stored separately in shadow files

### 8.2 Groups

```bash
cat /etc/group
```

Defines group memberships

Used for permission management

### 8.3 Valid Login Shells

```bash
cat /etc/shells
```

Lists shells allowed for login

Used by system tools and policies

### 8.4 Hostname Configuration

```bash
cat /etc/hostname
```

Persistent hostname configuration

Applied at boot

## 9. Directory Structure Awareness

Linux follows a standard filesystem hierarchy.

```bash
ls /
ls /home
ls /etc
ls /var
ls /boot
```

Key directories:

/home – User home directories

/etc – System configuration

/var – Logs and variable data

/boot – Kernel and bootloader files

Understanding this layout is mandatory for system administration.

## Summary

This chapter establishes system awareness:

What system you are on

Who you are on the system

How the system is configured

Where critical data resides