# Chapter 06 – User & Group Management (Command List)

This file contains essential Linux commands used to manage users, groups, and related system configuration files.

## Table of Contents

[User Information](#user-information) | [Create Users](#create-users) | [Modify Users](#modify-users) | [Delete Users](#delete-users) | [Group Management](#group-management) | [User & Group Files](#user--group-files) | [Shell Management](#shell-management) | [Search Users & Groups](#search-users--groups) | [Question List](#question-list)

---

## **User Information**

```bash
whoami                    # Show current user
id                        # Show user UID and group info
users                     # Show logged-in users
who                       # Show logged-in users
w                         # Show logged-in users with activity
getent passwd username    # Get user entry from database
```

## **Create Users**

```bash
useradd user1             # Create new user
useradd -m user2          # Create user with home directory
useradd -s /bin/bash user3 # Create user with specific shell
passwd user1              # Set password for user
```

## **Modify Users**

```bash
usermod -l newname oldname      # Change username
usermod -u 5001 user1           # Change UID
usermod -g group1 user1         # Change primary group
usermod -G group2 user1         # Add secondary group
usermod -aG wheel user1         # Append user to group
usermod -d /home/user1 user1    # Change home directory
usermod -s /bin/sh user1        # Change login shell
usermod -c "Manager" user1      # Add comment/description
```

## **Delete Users**

```bash
userdel user1             # Delete user only
userdel -r user1          # Delete user with home directory
```

## **Group Management**

```bash
groupadd group1           # Create new group
groupdel group1           # Delete group
gpasswd -a user1 group1   # Add user to group
gpasswd -d user1 group1   # Remove user from group
gpasswd -M u1,u2 group1   # Add multiple users to group
getent group group1       # Show group information
```

## **User & Group Files**

```bash
cat /etc/passwd           # View user account database
cat /etc/shadow           # View password database
cat /etc/group            # View group database
cat /etc/gshadow          # View secure group information
```

## **Shell Management**

```bash
cat /etc/shells           # List valid login shells
chsh -s /bin/bash user1   # Change user shell
usermod -s /sbin/nologin user2  # Set non-login shell
```

## **Search Users & Groups**

```bash
grep user1 /etc/passwd    # Search user in passwd file
grep group1 /etc/group    # Search group in group file
getent passwd             # List all users
getent group              # List all groups
```

