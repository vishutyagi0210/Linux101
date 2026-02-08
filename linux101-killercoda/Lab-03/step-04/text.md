## 1. The Concept
Computer sizes are in bytes. `4096` bytes is okay, but `4398046511104` bytes is visible confusion.
Humans prefer K (Kilobytes), M (Megabytes), and G (Gigabytes).

## 2. The Task
Ask Linux to speak "Human". Add the `-h` flag (human-readable).
Combine it with `-l` to see details.

Run this command:

```bash
ls -lh
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
The sizes changed from raw numbers to things like `4.0K` or `1.2M`. Much better.

---
**Mindset**: "Make the system work for me."
