## 1. The Concept
The most common thing you do in a terminal is run a command, realize you made a typo, and want to run it again (after fixing it) or just run it again because it worked.
The double bang `!!` is the shortcut for "Do that last thing again."

## 2. The Task
First, print a message: `echo "repeat me"`.
Then, use the shortcut to run it again.

Run these commands:

```bash
echo "repeat me"
!!
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw "repeat me" printed twice. The `!!` was instantly replaced by `echo "repeat me"`.

---
**Mindset**: "Instant replay."
