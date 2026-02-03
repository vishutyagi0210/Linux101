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

