# Chapter 25 – Virtualization and Containers (Command List)

This file contains essential Linux commands used to identify virtualization, manage virtual machines, and work with containers using common tools.

## Table of Contents

__[Virtualization Detection](#virtualization-detection)__ | __[KVM and libvirt](#kvm-and-libvirt)__ | __[Virtual Machine Management](#virtual-machine-management)__ | __[Container Basics](#container-basics)__ | __[Docker Management](#docker-management)__ | __[Container Images](#container-images)__ | __[Container Monitoring](#container-monitoring)__ | __[Question List](#question-list)

---

## **Virtualization Detection**

```bash
systemd-detect-virt          # Detect virtualization environment
lscpu | grep Virtualization  # Check CPU virtualization support
virt-what                    # Identify hypervisor type
```

## **KVM and libvirt**

```bash
systemctl status libvirtd    # Check libvirt service status
systemctl start libvirtd     # Start libvirt service
systemctl enable libvirtd    # Enable libvirt at boot
```

## **Virtual Machine Management**

```bash
virsh list                   # List running virtual machines
virsh list --all             # List all virtual machines
virsh start vm_name          # Start virtual machine
virsh shutdown vm_name       # Shutdown virtual machine
virsh dominfo vm_name        # Show virtual machine details
```

## **Container Basics**

```bash
docker version               # Show Docker version
docker info                  # Show Docker system information
podman info                  # Show Podman system information
```

## **Docker Management**

```bash
docker ps                    # List running containers
docker ps -a                 # List all containers
docker start container       # Start container
docker stop container        # Stop container
docker rm container          # Remove container
```

## **Container Images**

```bash
docker images                # List local container images
docker pull image            # Download container image
docker rmi image             # Remove container image
```

## **Container Monitoring**

```bash
docker stats                 # Show container resource usage
docker logs container        # Show container logs
podman ps                    # List containers using Podman
```

---
