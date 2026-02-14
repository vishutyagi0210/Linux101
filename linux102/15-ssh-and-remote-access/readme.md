# Chapter 15 – SSH and Remote Access (Command List)

This file contains essential Linux commands used to securely access remote systems, transfer files, and manage SSH connections.

## Table of Contents

[SSH Basics](#ssh-basics) | [SSH Authentication](#ssh-authentication) | [SSH Configuration](#ssh-configuration) | [Remote Command Execution](#remote-command-execution) | [File Transfer](#file-transfer) | [SSH Tunneling](#ssh-tunneling) | [Service Management](#service-management) | [Question List](#question-list)

---

## **SSH Basics**

```bash
ssh user@host                 # Connect to remote host
ssh -p 2222 user@host         # Connect using custom port
ssh hostname                  # Connect using hostname
```

---

## **SSH Authentication**

```bash
ssh-keygen                    # Generate SSH key pair
ssh-copy-id user@host         # Copy public key to remote host
ssh-add ~/.ssh/id_rsa         # Add private key to SSH agent
```

---

## **SSH Configuration**

```bash
cat /etc/ssh/sshd_config      # View SSH server configuration
cat ~/.ssh/config             # View user SSH configuration
sshd -t                       # Test SSH configuration
```

---

## **Remote Command Execution**

```bash
ssh user@host command         # Run command on remote host
ssh user@host uptime          # Check remote system uptime
```

---

## **File Transfer**

```bash
scp file user@host:/path      # Copy file to remote host
scp user@host:/path file      # Copy file from remote host
rsync -av file user@host:/path # Sync files securely
```

---

## **SSH Tunneling**

```bash
ssh -L 8080:localhost:80 user@host # Local port forwarding
ssh -R 9090:localhost:22 user@host # Remote port forwarding
ssh -D 1080 user@host         # Dynamic SOCKS proxy
```

---

## **Service Management**

```bash
systemctl status sshd         # Check SSH service status
systemctl start sshd          # Start SSH service
systemctl enable sshd         # Enable SSH at boot
```

---
