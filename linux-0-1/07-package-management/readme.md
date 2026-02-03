# Chapter 07 – Package Management (Command List)

This file contains essential Linux commands used to manage software packages using RPM, YUM, and DNF package managers.

## Table of Contents

[Package Information](#package-information) | [RPM Commands](#rpm-commands) | [YUM Commands](#yum-commands) | [DNF Commands](#dnf-commands) | [Repository Management](#repository-management) | [Cache Management](#cache-management) | [Package Search](#package-search) | [Dependency & Database Fix](#dependency--database-fix) | [Question List](#question-list)

---

## **Package Information**

```bash
rpm -qa                   # List all installed packages
rpm -q package_name       # Check if a package is installed
rpm -qi package_name      # Show package information
rpm -ql package_name      # List files installed by package
rpm -qc package_name      # List configuration files of package
rpm -qf /path/to/file     # Find which package owns a file
```

## **RPM Commands**

```bash
rpm -ivh package.rpm      # Install RPM package
rpm -Uvh package.rpm      # Upgrade RPM package
rpm -evh package_name     # Remove RPM package
rpm --checksig package.rpm # Verify package signature
rpm -K package.rpm        # Verify package integrity
```

## **YUM Commands**

```bash
yum install package_name  # Install package using yum
yum remove package_name   # Remove package using yum
yum update package_name   # Update package
yum list installed        # List installed packages
yum search keyword        # Search for package
yum info package_name     # Show package details
yum repolist              # Show enabled repositories
```

## **DNF Commands**

```bash
dnf install package_name  # Install package using dnf
dnf remove package_name   # Remove package
dnf update package_name   # Update package
dnf upgrade               # Upgrade all packages
dnf list installed        # List installed packages
dnf search keyword        # Search for package
dnf info package_name     # Show package information
dnf repolist              # Show enabled repositories
```

## **Repository Management**

```bash
cd /etc/yum.repos.d       # Go to repository directory
ls /etc/yum.repos.d      # List repository files
dnf config-manager --add-repo URL     # Add new repository
dnf config-manager --disable repoID   # Disable repository
dnf config-manager --enable repoID    # Enable repository
```

## **Cache Management**

```bash
dnf clean all             # Clear DNF cache
yum clean all             # Clear YUM cache
dnf makecache             # Rebuild DNF cache
```

## **Package Search**

```bash
which command_name        # Show path of command
whereis command_name      # Locate binary, source, and man page
locate filename           # Find file using database
```

## **Dependency & Database Fix**

```bash
dnf check                 # Check package database
rpm --rebuilddb          # Rebuild RPM database
dnf distro-sync          # Sync installed packages with repo versions
```