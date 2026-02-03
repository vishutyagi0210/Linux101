# Chapter 05 – Permissions & Ownership (Command List)

This file contains essential Linux commands used to manage file and directory permissions and ownership.

## Table of Contents

[View Permissions](#view-permissions) | [Change Permissions (chmod)](#change-permissions-chmod) | [Change Ownership (chown)](#change-ownership-chown) | [Change Group (chgrp)](#change-group-chgrp) | [Special Permissions](#special-permissions) | [Default Permissions (umask)](#default-permissions-umask) | [Question List](#question-list)

---

## **View Permissions**

```bash
ls -l                     # Show file permissions and ownership
stat file1.txt            # Show detailed permission information
getfacl file1.txt        # Show ACL permissions (if enabled)
```

## **Change Permissions (chmod)**

```bash
chmod 777 file1.txt       # Give full permissions to all
chmod 755 file1.txt       # rwx for owner, rx for group and others
chmod 644 file1.txt       # rw for owner, r for group and others
chmod u+rwx file1.txt     # Add rwx permission to user
chmod g+rw file1.txt      # Add read and write to group
chmod o-rwx file1.txt     # Remove all permissions from others
chmod u=rwx,g=rx,o=r file1.txt   # Set exact permissions
```

## **Change Ownership (chown)**

```bash
chown user file1.txt              # Change owner
chown user:group file1.txt        # Change owner and group
chown -R user:group dir1          # Change ownership recursively
```

## **Change Group (chgrp)**

```bash
chgrp group1 file1.txt            # Change group ownership
chgrp -R group1 dir1              # Change group recursively
```

## **Special Permissions**

```bash
chmod u+s file1.txt               # Set SUID permission
chmod g+s dir1                    # Set SGID permission
chmod +t /shared                  # Set sticky bit
ls -ld /shared                    # Verify sticky bit
```

## **Default Permissions (umask)**

```bash
umask                             # Show current umask value
umask 022                         # Set default permission mask
```

## **Permission Testing**

```bash
su username                       # Switch to another user
touch testfile                    # Create test file
ls -l testfile                    # Verify permissions
```