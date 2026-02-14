## 1. The Concept
Nginx uses a **master process** and multiple **worker processes**:
- **Master process**: Reads config, manages workers (runs as root)
- **Worker processes**: Handle actual requests (run as www-data user)

This architecture allows Nginx to handle thousands of connections efficiently.

## 2. The Task
View the Nginx processes.

Run this command:

```bash
ps aux | grep nginx
```

## 3. What just happened?
You should see:
- One `nginx: master process` (owned by root)
- One or more `nginx: worker process` (owned by www-data)

The number of workers is usually equal to your CPU cores.

---
**Mindset**: "Master manages, workers serve."
