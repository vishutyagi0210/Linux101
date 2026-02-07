# Chapter 17 – Archiving and Compression (Command List)

This file contains essential Linux commands used to archive files, compress data, extract archives, and manage compressed files.

## Table of Contents

__[Archiving Basics](#archiving-basics)__ | __[tar Usage](#tar-usage)__ | __[Compression Tools](#compression-tools)__ | __[Extraction](#extraction)__ | __[Archive Inspection](#archive-inspection)__ | __[Compression Comparison](#compression-comparison)__ | __[Question List](#question-list)

---

## **Archiving Basics**

```bash
tar -cf archive.tar dir       # Create tar archive
tar -cvf archive.tar dir      # Create tar archive with verbose output
```

## **tar Usage**

```bash
tar -czf archive.tar.gz dir   # Create gzip compressed archive
tar -cjf archive.tar.bz2 dir  # Create bzip2 compressed archive
tar -cJf archive.tar.xz dir   # Create xz compressed archive
```

## **Compression Tools**

```bash
gzip file                    # Compress file using gzip
gunzip file.gz               # Decompress gzip file
bzip2 file                   # Compress file using bzip2
bunzip2 file.bz2             # Decompress bzip2 file
xz file                      # Compress file using xz
unxz file.xz                 # Decompress xz file
```

## **Extraction**

```bash
tar -xf archive.tar          # Extract tar archive
tar -xzf archive.tar.gz      # Extract gzip archive
tar -xjf archive.tar.bz2     # Extract bzip2 archive
tar -xJf archive.tar.xz      # Extract xz archive
```

## **Archive Inspection**

```bash
tar -tf archive.tar          # List contents of tar archive
tar -tzf archive.tar.gz      # List contents of gzip archive
ls -lh archive.tar.gz        # Show archive size
```

## **Compression Comparison**

```bash
du -sh dir                   # Check original directory size
du -sh archive.tar.gz        # Check compressed archive size
```

---
