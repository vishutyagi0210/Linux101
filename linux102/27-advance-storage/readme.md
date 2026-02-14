# Chapter 27 – Advanced Storage (Command List)

This file contains essential Linux commands used to manage disks, partitions, filesystems, LVM, RAID, and advanced storage configurations.

## Table of Contents

__[Block Devices](#block-devices)__ | __[Partition Management](#partition-management)__ | __[Filesystem Management](#filesystem-management)__ | __[Mounting & Unmounting](#mounting--unmounting)__ | __[LVM Basics](#lvm-basics)__ | __[LVM Management](#lvm-management)__ | __[RAID Basics](#raid-basics)__ | __[Storage Monitoring](#storage-monitoring)__ | __[Question List](#question-list)

---

## **Block Devices**

```bash
lsblk                        # List block devices and mount points
blkid                        # Show block device UUIDs and types
cat /proc/partitions         # Show kernel partition table
```

## **Partition Management**

```bash
fdisk -l                     # List disk partitions
fdisk /dev/sdX               # Manage disk partitions (MBR)
parted -l                    # List partitions (GPT supported)
partprobe                    # Reload partition table
```

## **Filesystem Management**

```bash
mkfs.ext4 /dev/sdX1          # Create ext4 filesystem
mkfs.xfs /dev/sdX1           # Create XFS filesystem
fsck /dev/sdX1               # Check filesystem integrity
tune2fs -l /dev/sdX1         # Show ext filesystem parameters
```

## **Mounting & Unmounting**

```bash
mount /dev/sdX1 /mnt         # Mount filesystem
umount /mnt                  # Unmount filesystem
mount -a                     # Mount all filesystems from fstab
cat /etc/fstab               # View persistent mount configuration
```

## **LVM Basics**

```bash
pvcreate /dev/sdX            # Create physical volume
vgcreate vg_name /dev/sdX    # Create volume group
lvcreate -L 10G -n lv_name vg_name # Create logical volume
```

## **LVM Management**

```bash
pvs                          # Display physical volumes
vgs                          # Display volume groups
lvs                          # Display logical volumes
lvextend -L +5G /dev/vg/lv   # Extend logical volume
resize2fs /dev/vg/lv         # Resize ext filesystem
```

## **RAID Basics**

```bash
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc # Create RAID 1
mdadm --detail /dev/md0       # Show RAID details
cat /proc/mdstat              # Show RAID status
```

## **Storage Monitoring**

```bash
df -h                        # Show filesystem disk usage
du -sh dir                   # Show directory disk usage
iostat                       # Show disk I/O statistics
```

---