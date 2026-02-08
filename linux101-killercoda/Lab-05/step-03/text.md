## 1. The Concept
Every command in your history has a number. You can run any command by its number using `!number`.
This is useful for repeating something you did 10 minutes ago.

## 2. The Task
First, let's make a clear mark in history:
1. Run `echo "history mark"`
2. Run `history` and find the number next to that command.
3. Run `!number` (replace `number` with the actual number, e.g., `!42`).

Run these commands:

```bash
echo "history mark"
history
# Find the number, then run !<number>
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You didn't have to retype the command. You just pointed to it.

---
**Mindset**: "Precision recall."
