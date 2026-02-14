# Chapter 13 – Security Basics (Command List)

This file contains essential Linux commands used to manage system security, user privileges, firewall, SELinux, and SSH security.

## Table of Contents

[User Privileges](#user-privileges) | [Sudo Commands](#sudo-commands) | [Firewall Commands](#firewall-commands) | [SELinux Commands](#selinux-commands) | [SSH Security](#ssh-security) | [File Permissions Review](#file-permissions-review) | [Question List](#question-list)

---

## **User Privileges**

```bash
whoami                    # Show current user
id                        # Show user UID and group info
su -                      # Switch to root user
exit                      # Exit root session
```

---

## **Sudo Commands**

```bash
sudo command              # Run command as root
sudo -i                   # Open root shell
sudo -l                   # List sudo privileges
visudo                    # Edit sudoers file safely
```

---

## **Firewall Commands**

```bash
firewall-cmd --state      # Show firewall status
firewall-cmd --list-all   # List firewall rules
firewall-cmd --add-service=http --permanent   # Allow HTTP service
firewall-cmd --remove-service=http --permanent # Remove HTTP service
firewall-cmd --reload    # Reload firewall rules
```

---

## **SELinux Commands**

```bash
getenforce                # Show SELinux mode
setenforce 0              # Set SELinux to permissive mode
setenforce 1              # Set SELinux to enforcing mode
sestatus                  # Show SELinux status
ls -Z                     # Show SELinux context of files
restorecon -Rv /var/www   # Restore SELinux context
```

---

## **SSH Security**

```bash
ssh user@host             # Connect to remote host
scp file.txt user@host:/path  # Secure copy file
sftp user@host            # Secure file transfer
cat /etc/ssh/sshd_config  # View SSH configuration
systemctl restart sshd   # Restart SSH service
```

---

## **File Permissions Review**

```bash
chmod 700 file.txt        # Set secure permissions
chown user:group file.txt # Change owner and group
ls -l                     # Verify permissions
```

---

