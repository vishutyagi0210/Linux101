# Lab 16: The Changing World

## 1. The Concept
Some things change constantly: Log files, email queues, temporary print jobs.
Linux keeps these "variable" files in `/var` so they don't clutter up other places.

## 2. The Task
See where the dynamic data lives.

Run this command:

```bash
ls /var
```

> **Troubleshooting**: If you hit any validation error even though you wrote the correct command:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw directories like `log` (for logs), `cache` (for temporary storage), and `www` (often for web servers).

---
**Mindset**: "I know where data grows."