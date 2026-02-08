## 1. The Concept
Sometimes you want to select "all the text files" or "everything starting with A".
The Asterisk `*` is a **Wildcard**. It matches *anything*.
`*.txt` means "Anything ending in .txt".

## 2. The Task
List only the files that end in `.txt` (like your `welcome.txt` or others).

Run this command:

```bash
ls *.txt
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
Linux ignored everything else and showed you only what matched your pattern.

---
**Mindset**: "I select groups."
