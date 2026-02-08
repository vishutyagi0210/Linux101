## 1. The Concept
Every command leaves a secret code behind called the "Exit Status".
`0` means Success.
Anything else (like `1` or `2` or `127`) means Failure.
You can see this code using the variable `$?`.

## 2. The Task
Check the status of your last command (which failed).

Run this command:

```bash
echo $?
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You should see a number (probably `2` for `ls` error).
If you run `ls` successfully and then `echo $?`, you would see `0`.

---
**Mindset**: "I can check the result."
