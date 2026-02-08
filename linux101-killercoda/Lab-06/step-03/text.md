## 1. The Concept
Sometimes you want a "Plan B."
If the first command fails, do the second one.
The `||` (OR) operator only runs the second command if the first one fails (Exit Code not 0).

## 2. The Task
Try to list a missing file. If it fails, print a message.

Run this command:

```bash
ls /fake || echo "It is missing"
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
`ls /fake` failed (as expected). So `echo "It is missing"` ran.
If `ls` had succeeded, the echo would have been skipped.

---
**Mindset**: "I have a Plan B."
