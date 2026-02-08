## 1. The Concept
What if you want to create a directory *inside* another directory that doesn't exist yet?
`mkdir project/src/assets` will fail if `project` doesn't exist.
Use `mkdir -p` (Parents) to create the whole path at once.

## 2. The Task
Create a nested structure: `project/src/logs`.

Run this command:

```bash
mkdir -p project/src/logs
```

## 3. What just happened?
Linux created `project`, then `src`, then `logs`. One command, three directories.

---
**Mindset**: "I build deep structures."
