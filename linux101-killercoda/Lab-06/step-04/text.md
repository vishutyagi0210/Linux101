## 1. The Concept
You can combine `&&` and `||` to handle both success and failure in one line.
`cmd1 && success || failure`
It reads like: "Try cmd1. If it works, run success. If it fails, run failure."

## 2. The Task
Try to enter the `/root` directory (which is forbidden).
- If you get in, say "In."
- If you can't, say "Denied."

Run this command:

```bash
cd /root && echo "In" || echo "Denied"
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
`cd /root` failed (Permission denied). The `&&` part was skipped. The `||` part ran, identifying the failure.

---
**Mindset**: "I handle all outcomes."
