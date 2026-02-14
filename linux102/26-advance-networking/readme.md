# Chapter 26 – Advanced Networking (Command List)

This file contains essential Linux commands used for advanced network configuration, diagnostics, routing, interfaces, and traffic analysis.

## Table of Contents

__[Network Interfaces](#network-interfaces)__ | __[IP Addressing](#ip-addressing)__ | __[Routing](#routing)__ | __[Network Testing](#network-testing)__ | __[Ports & Sockets](#ports--sockets)__ | __[Traffic Analysis](#traffic-analysis)__ | __[DNS Tools](#dns-tools)__ | __[Network Configuration Files](#network-configuration-files)__ | __[Question List](#question-list)

---

## **Network Interfaces**

```bash
ip link show                 # Show network interfaces
ip link set eth0 up           # Bring network interface up
ip link set eth0 down         # Bring network interface down
nmcli device status          # Show NetworkManager device status
```

## **IP Addressing**

```bash
ip addr show                 # Show IP addresses
ip addr add 192.168.1.10/24 dev eth0 # Add IP address to interface
ip addr del 192.168.1.10/24 dev eth0 # Remove IP address from interface
```

## **Routing**

```bash
ip route show                # Show routing table
ip route add default via 192.168.1.1 # Add default gateway
ip route del default         # Remove default route
```

## **Network Testing**

```bash
ping host                    # Test network connectivity
traceroute host              # Trace network path
tracepath host               # Trace path without root privileges
```

## **Ports & Sockets**

```bash
ss -tulnp                    # Show listening ports and processes
ss -tn                       # Show active TCP connections
netstat -tulnp               # Show listening ports (legacy)
```

## **Traffic Analysis**

```bash
tcpdump -i eth0              # Capture traffic on interface
tcpdump -i eth0 port 80      # Capture traffic on specific port
iftop                        # Show bandwidth usage per connection
```

## **DNS Tools**

```bash
dig example.com              # Query DNS records
nslookup example.com         # Lookup DNS information
resolvectl status            # Show DNS resolver status
```

## **Network Configuration Files**

```bash
cat /etc/hosts               # View static hostname mappings
cat /etc/resolv.conf         # View DNS resolver configuration
nmcli connection show        # List NetworkManager connections
```

---