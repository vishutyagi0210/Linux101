## 1. The Concept
How does the system know its name? How does it know which users exist?
It reads configuration files.
Almost all system-wide configuration lives in `/etc` (Editable Text Configuration).

## 2. The Task
Peek inside the system's brain.

Run this command:

```bash
ls /etc
```

> **Troubleshooting**: If you hit any validation error even though you wrote the correct command:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw a huge list of files. These text files control almost every aspect of the system.

---
**Mindset**: "Configuration is transparent."