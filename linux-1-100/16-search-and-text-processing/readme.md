# Chapter 16 – Search and Text Processing (Command List)

This file contains essential Linux commands used to search files, process text, filter output, and analyze logs and data streams.

## Table of Contents

[File Searching](#file-searching) | [Content Searching](#content-searching) | [Text Viewing](#text-viewing) | [Text Processing](#text-processing) | [Sorting & Counting](#sorting--counting) | [Field Processing](#field-processing) | [Stream Editing](#stream-editing) | [Practical Combinations](#practical-combinations) | [Question List](#question-list)

---

## **File Searching**

```bash
find /path -name file          # Find file by name
find /path -type f             # Find regular files
find /path -type d             # Find directories
find /path -size +100M         # Find large files
locate filename                # Search file using index
updatedb                       # Update locate database
```

---

## **Content Searching**

```bash
grep pattern file              # Search pattern in file
grep -i pattern file           # Case-insensitive search
grep -r pattern /path          # Recursive search
grep -v pattern file           # Exclude matching lines
grep -n pattern file           # Show line numbers
```

---

## **Text Viewing**

```bash
cat file                       # Display file content
less file                      # View file with paging
more file                      # Basic paged viewer
head file                      # Show first lines
tail file                      # Show last lines
tail -f file                   # Follow file growth (logs)
```

---

## **Text Processing**

```bash
cut -d: -f1 file               # Extract fields using delimiter
tr 'a-z' 'A-Z'                 # Translate lowercase to uppercase
wc -l file                     # Count lines
wc -w file                     # Count words
wc -c file                     # Count characters
```

---

## **Sorting & Counting**

```bash
sort file                      # Sort file content
sort -u file                   # Sort and remove duplicates
uniq                           # Remove duplicate lines
uniq -c                        # Count duplicate lines
```

---

## **Field Processing**

```bash
awk '{print $1}' file          # Print first column
awk -F: '{print $1}' file      # Use custom delimiter
awk '{print NR, $0}' file      # Print line numbers
```

---

## **Stream Editing**

```bash
sed 's/old/new/' file          # Replace first match per line
sed 's/old/new/g' file         # Replace all matches
sed -n '1,10p' file            # Print specific lines
```

---

## **Practical Combinations**

```bash
ps aux | grep process          # Search running processes
journalctl | grep error        # Filter system logs
ls -l | awk '{print $9}'       # Extract filenames
sort file | uniq -c            # Count duplicate entries
```

---
