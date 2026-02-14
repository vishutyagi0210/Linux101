# Chapter 03 – File System (Command List)

This file contains essential Linux commands related to the Linux file system, directory structure, and file types.

## Table of Contents

[Linux Directory Structure](#linux-directory-structure) | [File & Directory Listing](#file--directory-listing) | [File Type Identification](#file-type-identification) | [File Information](#file-information) | [Disk & Filesystem View](#disk--filesystem-view) | [Mount Information](#mount-information) | [Inode Information](#inode-information) | [Question List](#question-list)

---

## **Linux Directory Structure**

```bash
ls /                      # List root directory
ls /home                  # List home directories
ls /etc                   # List configuration files
ls /var                   # List variable data and logs
ls /usr                   # List user programs and libraries
ls /boot                  # List boot loader files
ls /dev                   # List device files
ls /proc                  # List process information
ls /tmp                   # List temporary files
```

## **File & Directory Listing**

```bash
ls                        # List files and directories
ls -l                     # List with permissions and ownership
ls -a                     # List hidden files
ls -lh                    # List in human readable format
ls -R                     # List directories recursively
tree                      # Display directory structure as tree
```

## **File Type Identification**

```bash
file filename             # Show file type
stat filename             # Show detailed file information
```

## **File Information**

```bash
stat file                 # Display file size, permissions, inode, and timestamps
du -sh file               # Show file size
du -sh directory          # Show directory size
```

## **Disk & Filesystem View**

```bash
df -h                     # Show disk space usage
df -Th                    # Show filesystem type and usage
mount                     # Show mounted filesystems
findmnt                   # Display mounted filesystem tree
```

## **Mount Information**

```bash
mount | column -t         # Display mounted filesystems in readable format
lsblk                     # Show block devices
blkid                     # Show UUID and filesystem type
```

## **Inode Information**

```bash
df -i                     # Show inode usage
ls -i                     # Show inode number of files
stat filename             # Show inode details
```

## **Filesystem Navigation**

```bash
pwd                       # Show current working directory
cd /etc                   # Change directory to /etc
cd /var                   # Change directory to /var
cd /home                  # Change directory to /home
```