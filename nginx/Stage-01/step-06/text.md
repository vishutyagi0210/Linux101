## 1. The Concept
Nginx writes two types of logs:
- **Access log**: Every request (`/var/log/nginx/access.log`)
- **Error log**: Problems and warnings (`/var/log/nginx/error.log`)

These logs are essential for debugging.

## 2. The Task
View the access log to see your previous `curl` request.

Run these commands:

```bash
sudo tail -n 20 /var/log/nginx/access.log
sudo tail -n 20 /var/log/nginx/error.log
```

## 3. What just happened?
- **Access log** shows: IP, timestamp, request, status code, user-agent
- **Error log** shows: Errors, warnings, notices

**Log format example**:
```
127.0.0.1 - - [09/Feb/2026:07:00:00 +0000] "GET / HTTP/1.1" 200 612
```

---
**Mindset**: "Logs tell the story."
