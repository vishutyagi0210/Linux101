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

## **Question List**

1. Which command shows the current logged-in user?
2. How do you display UID and group information of a user?
3. Which command creates a new user?
4. Which command sets a password for a user?
5. How do you create a user with a home directory?
6. Which command changes the username?
7. How do you change the UID of a user?
8. Which command changes the primary group of a user?
9. How do you add a user to a secondary group?
10. Which command deletes a user account?
11. Which command deletes a user along with home directory?
12. How do you create a new group?
13. Which command adds a user to a group?
14. Which command removes a user from a group?
15. Which file contains user account information?
16. Which file contains encrypted passwords?
17. Which file contains group information?
18. Which command lists valid login shells?
19. How do you set a non-login shell for a user?
20. Which command searches a user in /etc/passwd file?