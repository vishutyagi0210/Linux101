## 1. The Concept
Every file has a timestamp (when it was last touched).
The `touch` command creates files, but if a file *already exists*, it just updates the timestamp to "now".

## 2. The Task
Update the timestamp of `notes.txt`.
1. Check the time: `ls -l notes.txt`
2. Update it: `touch notes.txt`
3. Check it again: `ls -l notes.txt`

Run this command:

```bash
touch notes.txt
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
The content didn't change, but the "Last Modified" time did.
This logic is used by backups (only copy files that changed recently).

---
**Mindset**: "Time is metadata."
