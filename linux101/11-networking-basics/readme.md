# Chapter 11 – Networking Basics (Command List)

This file contains essential Linux commands used to check network configuration, connectivity, and DNS.

## Table of Contents

[Network Interfaces](#network-interfaces) | [IP & Routing](#ip--routing) | [Connectivity Testing](#connectivity-testing) | [Ports & Services](#ports--services) | [DNS Commands](#dns-commands) | [Data Transfer](#data-transfer) | [Question List](#question-list)

---

## **Network Interfaces**

```bash
ip a                    # Show all network interfaces and IP addresses
ifconfig                # Show network interface details (legacy)
nmcli device status     # Show network device status
ethtool eth0            # Show interface speed and link info
```

---

## **IP & Routing**

```bash
ip r                    # Show routing table
route -n                # Show routing table (legacy)
hostname -I             # Show IP address of system
arp -a                  # Show ARP table
```

---

## **Connectivity Testing**

```bash
ping google.com         # Test network connectivity
traceroute google.com   # Trace network path
tracepath google.com    # Trace network path (alternative)
mtr google.com          # Network diagnostic tool
```

---

## **Ports & Services**

```bash
ss -tuln                # Show listening ports
netstat -tulnp          # Show listening ports and processes (legacy)
lsof -i :80             # Show process using port 80
```

---

## **DNS Commands**

```bash
nslookup google.com     # Query DNS records
dig google.com          # Detailed DNS lookup
host google.com         # DNS lookup
cat /etc/resolv.conf    # Show DNS configuration
```

---

## **Data Transfer**

```bash
curl http://example.com # Fetch URL content
wget http://example.com # Download file from URL
scp file.txt user@host:/path   # Copy file to remote system
sftp user@host          # Secure file transfer
```

---

