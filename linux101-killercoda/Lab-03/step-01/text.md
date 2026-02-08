## 1. The Concept
By default, `ls` only shows names. But files have secrets: sizes, dates, and owners.
To see these secrets, we need to ask for the "long" format.

## 2. The Task
List files with details using the `-l` (long) flag.

Run this command:

```bash
ls -l
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw columns of data.
- Permissions (drwxr-xr-x)
- Owner (root/ubuntu)
- Size (4096)
- Date (Jan 1)
- Name

---
**Mindset**: "I look below the surface."
