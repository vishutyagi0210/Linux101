## 1. The Concept
Sometimes the second command *depends* on the first one working.
For example, "Go to a directory, AND THEN announce you arrived."
If the directory doesn't exist, you shouldn't lie about being there.
The `&&` (AND) operator only runs the second command if the first one succeeds (Exit Code 0).

## 2. The Task
Change directory to the **Root** (`/`) and satisfy the confirmation.

Run this command:

```bash
cd / && echo "I have arrived"
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
Because `cd /` worked, `echo "I have arrived"` ran.
If you tried `cd /fake && echo "Arrived"`, the echo would never happen.

---
**Mindset**: "I build on success."
