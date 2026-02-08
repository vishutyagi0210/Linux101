## 1. The Concept
Directories can contain other directories (sub-directories).
To see everything inside a folder *and* everything inside its sub-folders, you command Linux to look **Recursively**.

## 2. The Task
I have created a folder named `project` for you. Listing it normally (`ls project`) only shows the top layer.
Let's see deep inside it.

Run this command:

```bash
ls -R project
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
Linux listed `project`, asking "What's in here?"... then found `src` and asked "What's in here?"... and kept going until it saw everything.

---
**Mindset**: "I can explore complex structures."
