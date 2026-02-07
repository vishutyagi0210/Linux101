# Chapter 23 – Hardware and System Information (Command List)

This file contains essential Linux commands used to view hardware details, CPU, memory, disks, PCI devices, USB devices, and overall system information.

## Table of Contents

__[System Overview](#system-overview)__ | __[CPU Information](#cpu-information)__ | __[Memory Information](#memory-information)__ | __[Disk Information](#disk-information)__ | __[PCI Devices](#pci-devices)__ | __[USB Devices](#usb-devices)__ | __[Hardware Summary](#hardware-summary)__ | __[Question List](#question-list)

---

## **System Overview**

```bash
hostnamectl                  # Show system hostname and OS info
uname -a                     # Show kernel and system information
arch                         # Show system architecture
```

## **CPU Information**

```bash
lscpu                        # Show CPU architecture details
cat /proc/cpuinfo            # Show detailed CPU information
nproc                        # Show number of processing units
```

## **Memory Information**

```bash
free -h                      # Show memory usage in human-readable format
cat /proc/meminfo            # Show detailed memory information
vmstat                       # Show memory and process statistics
```

## **Disk Information**

```bash
lsblk                        # List block devices
df -h                        # Show disk usage
du -sh dir                   # Show directory size
```

## **PCI Devices**

```bash
lspci                        # List PCI devices
lspci -v                     # Show detailed PCI device information
```

## **USB Devices**

```bash
lsusb                        # List USB devices
lsusb -v                     # Show detailed USB device information
```

## **Hardware Summary**

```bash
hwinfo                       # Show detailed hardware information
inxi -Fx                     # Show full system and hardware summary
```

---