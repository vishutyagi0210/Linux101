## 1. The Concept
When a command fails, Linux usually tells you why. This is not a failure of *you*; it's just information.
"Command not found" means "I don't know that verb."
"No such file" means "I can't find that object."

## 2. The Task
Try to list a file that definitely doesn't exist.

Run this command:

```bash
ls /nonexistent
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw an error message: `ls: cannot access '/nonexistent': No such file or directory`.
This is good! You successfully triggered a specific error.

---
**Mindset**: "Errors are information."
