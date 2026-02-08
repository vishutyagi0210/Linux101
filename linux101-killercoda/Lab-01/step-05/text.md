## 1. The Concept
Servers are designed to run forever. You often want to know: "How long has this machine been on?"
This is called **Uptime**.

## 2. The Task
Check the system's stamina.

Run this command:

```bash
uptime
```

> **Troubleshooting**: If you hit any validation error even though you wrote the correct command:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw a time duration (e.g., `up 2 min`). On real servers, you might see `up 300 days`.
It also shows "load average," which is how busy the CPU is (lower is better).

---
**Mindset**: "Servers are built to last."
