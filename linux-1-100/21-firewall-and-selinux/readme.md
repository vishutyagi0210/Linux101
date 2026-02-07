# Chapter 21 – Firewall and SELinux (Command List)

This file contains essential Linux commands used to manage firewall rules and SELinux modes, policies, and troubleshooting.

## Table of Contents

__[Firewall Basics](#firewall-basics)__ | __[firewalld Management](#firewalld-management)__ | __[Firewall Zones](#firewall-zones)__ | __[Port and Service Rules](#port-and-service-rules)__ | __[iptables Basics](#iptables-basics)__ | __[SELinux Basics](#selinux-basics)__ | __[SELinux Modes](#selinux-modes)__ | __[SELinux Contexts](#selinux-contexts)__ | __[SELinux Troubleshooting](#selinux-troubleshooting)__ | __[Question List](#question-list)

---

## **Firewall Basics**

```bash
systemctl status firewalld     # Check firewall service status
systemctl start firewalld      # Start firewall service
systemctl enable firewalld     # Enable firewall at boot
```

## **firewalld Management**

```bash
firewall-cmd --state           # Check firewall state
firewall-cmd --reload          # Reload firewall rules
firewall-cmd --list-all        # List active firewall rules
```

## **Firewall Zones**

```bash
firewall-cmd --get-zones        # List available firewall zones
firewall-cmd --get-default-zone # Show default firewall zone
firewall-cmd --get-active-zones # Show active firewall zones
```

## **Port and Service Rules**

```bash
firewall-cmd --list-services   # List allowed services
firewall-cmd --list-ports      # List allowed ports
firewall-cmd --add-service=http --permanent # Allow HTTP service
firewall-cmd --add-port=8080/tcp --permanent # Allow TCP port
```

## **iptables Basics**

```bash
iptables -L                   # List iptables rules
iptables -F                   # Flush iptables rules
iptables -n -L                # List rules without DNS lookup
```

## **SELinux Basics**

```bash
getenforce                    # Show current SELinux mode
sestatus                      # Show SELinux status
```

## **SELinux Modes**

```bash
setenforce 0                  # Set SELinux to permissive mode
setenforce 1                  # Set SELinux to enforcing mode
```

## **SELinux Contexts**

```bash
ls -Z                         # View SELinux file contexts
ps -eZ                        # View SELinux process contexts
id -Z                         # View SELinux user context
```

## **SELinux Troubleshooting**

```bash
ausearch -m avc               # Search SELinux denial messages
audit2why < /var/log/audit/audit.log # Explain SELinux denials
audit2allow < /var/log/audit/audit.log # Generate SELinux policy
```

---
