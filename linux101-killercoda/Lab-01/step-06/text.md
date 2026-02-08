## 1. The Concept
Computers track time precisely. Logs, errors, and files are all time-stamped.
If the date is wrong, security certificates fail and chaos ensues.

## 2. The Task
Ask the system for the current date and time.

Run this command:

```bash
date
```

> **Troubleshooting**: If you hit any validation error even though you wrote the correct command:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw the exact time including the timezone (e.g., `UTC` or `EST`).
Linux servers usually run on **UTC** (Coordinated Universal Time) to avoid confusion between timezones.

---
**Mindset**: "Time is critical for order."
