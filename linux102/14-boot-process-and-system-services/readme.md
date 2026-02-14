# Chapter 14 – Boot Process and System Services (Command List)

This file contains essential Linux commands used to understand the system boot process, bootloader, systemd targets, and service management.

## Table of Contents

__[Boot Process Overview](#boot-process-overview)__ | __[Bootloader & GRUB](#bootloader--grub)__ | __[Kernel & Boot Messages](#kernel--boot-messages)__ | __[systemd & Targets](#systemd--targets)__ | __[Service Management](#service-management)__ | __[Service Status & Logs](#service-status--logs)__ | __[Enable & Disable Services](#enable--disable-services)__ | __[Rescue & Emergency Mode](#rescue--emergency-mode)__

---

## **Boot Process Overview**

```bash
systemd-analyze                # Show system boot time
systemd-analyze blame          # Show services ordered by startup time
systemd-analyze critical-chain # Show boot critical path
```

## **Bootloader & GRUB**

```bash
grub2-editenv list             # Show GRUB environment variables
cat /etc/default/grub          # View GRUB configuration
ls /boot                       # View boot directory
ls /boot/grub2                 # View GRUB files (RHEL-based)
```

## **Kernel & Boot Messages**

```bash
uname -r                       # Show running kernel version
dmesg                          # Show kernel ring buffer
dmesg | less                   # View kernel messages safely
journalctl -k                  # View kernel logs via journal
```

## **systemd & Targets**

```bash
systemctl get-default          # Show default boot target
systemctl list-units --type=target  # List available targets
systemctl isolate multi-user.target # Switch to multi-user mode
systemctl isolate graphical.target # Switch to graphical mode
```

## **Service Management**

```bash
systemctl status service       # Show service status
systemctl start service        # Start a service
systemctl stop service         # Stop a service
systemctl restart service      # Restart a service
systemctl reload service       # Reload service configuration
```

## **Service Status & Logs**

```bash
systemctl list-units --type=service   # List active services
systemctl list-unit-files             # List all service unit files
journalctl -u service                 # View service logs
journalctl -xe                        # View recent system errors
```

## **Enable & Disable Services**

```bash
systemctl enable service        # Enable service at boot
systemctl disable service       # Disable service at boot
systemctl is-enabled service    # Check if service is enabled
```

## **Rescue & Emergency Mode**

```bash
systemctl rescue                # Switch to rescue mode
systemctl emergency             # Switch to emergency mode
systemctl reboot                # Reboot system
systemctl poweroff              # Power off system
```