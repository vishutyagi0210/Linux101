# Chapter 09 – Disk Basics (Command List)

This file contains essential Linux commands used to view disk usage, filesystems, and mounted storage devices.

## Table of Contents

[Disk Usage](#disk-usage) | [Directory Size](#directory-size) | [Block Devices](#block-devices) | [Mounted Filesystems](#mounted-filesystems) | [Mount & Unmount](#mount--unmount) | [Filesystem Information](#filesystem-information) | [Inode Usage](#inode-usage) | [Question List](#question-list)

---

## **Disk Usage**

```bash
df -h                     # Show disk usage in human readable format
df -Th                    # Show filesystem type and disk usage
df -i                     # Show inode usage
```

## **Directory Size**

```bash
du -sh /home              # Show size of /home directory
du -sh *                  # Show size of all files and directories
du -ah                    # Show size of all files including subdirectories
```

## **Block Devices**

```bash
lsblk                     # Show block devices and partitions
blkid                     # Show UUID and filesystem type
mount | column -t         # Show mounted devices in readable format
```

## **Mounted Filesystems**

```bash
mount                     # Show mounted filesystems
findmnt                   # Display mounted filesystem tree
cat /proc/mounts          # Show mounted filesystems
```

## **Mount & Unmount**

```bash
mount /dev/sdb1 /mnt      # Mount device to directory
umount /mnt               # Unmount filesystem
mount -o ro /dev/sdb1 /mnt # Mount filesystem as read-only
```

## **Filesystem Information**

```bash
ls /                      # List root directory
stat /                    # Show filesystem statistics
tune2fs -l /dev/sda1      # Show filesystem details (ext filesystems)
```

## **Inode Usage**

```bash
df -i                     # Show inode usage
ls -i file.txt            # Show inode number of file
stat file.txt             # Show inode details
```

## **Question List**

1. Which command shows disk usage in human readable format?
2. How do you display filesystem type along with disk usage?
3. Which command shows inode usage?
4. How do you check directory size?
5. Which command lists block devices?
6. Which command shows UUID of a filesystem?
7. How do you view mounted filesystems?
8. Which command displays mounted filesystem tree?
9. How do you mount a device?
10. How do you unmount a filesystem?
11. Which command mounts a filesystem as read-only?
12. Which command shows filesystem statistics?
13. How do you find inode number of a file?
14. Which command shows inode details?
15. What is the purpose of df command?
16. What is the purpose of du command?
17. Which file shows mounted filesystems information?
18. What directory is commonly used to mount devices?
19. Which command lists all filesystems currently mounted?
20. Which command shows block device hierarchy?