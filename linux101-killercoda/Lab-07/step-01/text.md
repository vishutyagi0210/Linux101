## 1. The Concept
Commands usually print to the screen (Standard Output).
You can redirect this output to a file using the Greater Than symbol `>`.
**Warning**: This overwrites the file if it exists.

## 2. The Task
Save the phrase "Hello Linux" into a file named `welcome.txt`.

Run this command:

```bash
echo "Hello Linux" > welcome.txt
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
Nothing printed to the screen. The text went inside the file.
You can verify it with `cat welcome.txt` (we learned `cat` in Lab 27).

---
**Mindset**: "I can save my work."
