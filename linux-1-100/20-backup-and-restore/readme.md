# Chapter 20 – Backup and Restore (Command List)

This file contains essential Linux commands used to back up data, restore files, and verify backup integrity using common tools.

## Table of Contents

__[Backup Preparation](#backup-preparation)__ | __[File Backup](#file-backup)__ | __[Directory Backup](#directory-backup)__ | __[Archiving for Backup](#archiving-for-backup)__ | __[Incremental Backups](#incremental-backups)__ | __[Remote Backups](#remote-backups)__ | __[Backup Verification](#backup-verification)__ | __[Restore Operations](#restore-operations)__ | __[Question List](#question-list)

---

## **Backup Preparation**

```bash
df -h                        # Check available disk space
du -sh dir                   # Check directory size
ls -lh file                  # Check file size
```

## **File Backup**

```bash
cp file file.bak             # Create simple file backup
cp -a file file.bak          # Preserve permissions and ownership
```

## **Directory Backup**

```bash
cp -r dir dir.bak            # Backup directory recursively
cp -a dir dir.bak            # Preserve attributes while copying
```

## **Archiving for Backup**

```bash
tar -cf backup.tar dir       # Create tar archive
tar -czf backup.tar.gz dir   # Create compressed backup
tar -cvf backup.tar dir      # Create verbose backup
```

## **Incremental Backups**

```bash
rsync -av src/ dst/          # Perform incremental backup
rsync -av --delete src/ dst/ # Mirror source to destination
rsync -av --dry-run src/ dst/ # Simulate backup operation
```

## **Remote Backups**

```bash
rsync -av dir user@host:/path # Backup directory to remote server
scp backup.tar.gz user@host:/path # Copy backup to remote system
```

## **Backup Verification**

```bash
tar -tf backup.tar           # List archive contents
rsync -avc src/ dst/         # Verify files using checksum
md5sum file                  # Generate MD5 checksum
sha256sum file               # Generate SHA256 checksum
```

## **Restore Operations**

```bash
cp file.bak file             # Restore file from backup
tar -xf backup.tar           # Restore tar archive
tar -xzf backup.tar.gz       # Restore compressed backup
rsync -av dst/ src/          # Restore files using rsync
```

---
