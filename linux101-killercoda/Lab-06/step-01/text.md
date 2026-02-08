## 1. The Concept
You can run multiple commands at once using the semicolon `;`.
It means: "Do this, allow it to finish, and then immediately do that."
It doesn't care if the first one succeeded or failed. It just blindly proceeds.

## 2. The Task
Run `date` and `echo "Done"` in one line.

Run this command:

```bash
date ; echo "Done"
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
Both commands ran. First the date printed, then "Done".

---
**Mindset**: "I can chain actions."
