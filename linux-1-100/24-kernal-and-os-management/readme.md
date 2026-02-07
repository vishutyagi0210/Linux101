# Chapter 24 – Kernel and OS Management (Command List)

This file contains essential Linux commands used to manage the kernel, view OS details, handle updates, modules, and perform safe system maintenance.

## Table of Contents

__[Kernel Information](#kernel-information)__ | __[Kernel Modules](#kernel-modules)__ | __[Booting with Different Kernels](#booting-with-different-kernels)__ | __[OS Information](#os-information)__ | __[System Updates](#system-updates)__ | __[Reboot & Shutdown](#reboot--shutdown)__ | __[Question List](#question-list)

---

## **Kernel Information**

```bash
uname -r                     # Show running kernel version
uname -a                     # Show complete kernel and system info
rpm -q kernel                # List installed kernels (RHEL-based)
dpkg -l | grep linux-image   # List installed kernels (Debian-based)
```

## **Kernel Modules**

```bash
lsmod                        # List loaded kernel modules
modprobe module              # Load kernel module
modprobe -r module           # Remove kernel module
modinfo module               # Show module information
```

## **Booting with Different Kernels**

```bash
grubby --default-kernel      # Show default boot kernel (RHEL-based)
grubby --info=ALL            # List available kernels (RHEL-based)
ls /boot                     # List installed kernel files
```

## **OS Information**

```bash
cat /etc/os-release          # Show OS distribution details
hostnamectl                  # Show OS and system details
lsb_release -a               # Show distro info (if available)
```

## **System Updates**

```bash
yum update                   # Update system packages (RHEL-based)
dnf update                   # Update system packages (modern RHEL)
apt update                   # Refresh package index (Debian-based)
apt upgrade                  # Upgrade system packages
```

## **Reboot & Shutdown**

```bash
reboot                       # Reboot the system
shutdown -r now              # Reboot immediately
shutdown -h now              # Shutdown system
systemctl reboot             # Reboot using systemd
systemctl poweroff           # Power off system
```

---