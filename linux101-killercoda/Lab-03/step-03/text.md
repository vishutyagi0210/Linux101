# Lab 20: Reading the Matrix

## 1. The Concept
When you look at `ls -l`, the first column is the most important.
It tells you if a thing is a file (`-`) or directory (`d`), and who can read/write it (`rwx`).

## 2. The Task
Let's inspect a critical system file: `/etc/passwd`.

Run this command:

```bash
ls -l /etc/passwd
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw something like `-rw-r--r--`.
- `-` : It's a file.
- `rw-` : The owner (root) can read and write.
- `r--` : Everyone else can only read.

---
**Mindset**: "I can read the rules."
