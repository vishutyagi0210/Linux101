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

## **Question List**

1. Which command shows the current user?
2. How do you run a command as root?
3. Which command opens a root shell?
4. Which command edits sudoers file safely?
5. How do you check firewall status?
6. Which command lists firewall rules?
7. How do you allow HTTP service in firewall?
8. Which command reloads firewall rules?
9. How do you check SELinux mode?
10. Which command shows SELinux status?
11. How do you set SELinux to permissive mode?
12. Which command shows SELinux context of files?
13. Which command restores SELinux context?
14. How do you connect to a remote server using SSH?
15. Which file contains SSH configuration?
16. Which command restarts SSH service?
17. How do you securely copy a file to remote server?
18. Which command shows file permissions?
19. Which command changes file owner and group?
20. What is the purpose of firewall in Linux?
