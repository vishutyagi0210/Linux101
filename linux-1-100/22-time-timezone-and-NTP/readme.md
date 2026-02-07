# Chapter 22 – Time, Timezone and NTP (Command List)

This file contains essential Linux commands used to manage system time, timezones, hardware clock, and NTP time synchronization.

## Table of Contents

__[Time Basics](#time-basics)__ | __[Timezone Management](#timezone-management)__ | __[timedatectl Usage](#timedatectl-usage)__ | __[Hardware Clock](#hardware-clock)__ | __[NTP Basics](#ntp-basics)__ | __[NTP Services](#ntp-services)__ | __[Time Synchronization Checks](#time-synchronization-checks)__ | __[Question List](#question-list)

---

## **Time Basics**

```bash
date                         # Show current system date and time
uptime                       # Show system uptime and load
hwclock                      # Show hardware clock time
```

## **Timezone Management**

```bash
timedatectl list-timezones   # List available timezones
timedatectl show             # Show current time settings
timedatectl set-timezone UTC # Set system timezone
```

## **timedatectl Usage**

```bash
timedatectl                  # Show detailed time status
timedatectl set-time on      # Enable manual time setting
timedatectl set-time off     # Disable manual time setting
```

## **Hardware Clock**

```bash
hwclock --show               # Display hardware clock
hwclock --systohc            # Sync system time to hardware clock
hwclock --hctosys            # Sync hardware clock to system time
```

## **NTP Basics**

```bash
chronyc sources              # Show NTP time sources
chronyc tracking             # Show time synchronization status
ntpq -p                      # Show NTP peers (legacy)
```

## **NTP Services**

```bash
systemctl status chronyd     # Check chrony service status
systemctl start chronyd      # Start chrony service
systemctl enable chronyd     # Enable chrony at boot
```

## **Time Synchronization Checks**

```bash
timedatectl timesync-status  # Show NTP sync status
journalctl -u chronyd        # View NTP service logs
date -u                      # Show current UTC time
```

---
