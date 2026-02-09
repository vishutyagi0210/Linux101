## 1. The Concept
Logs are your **first line of defense** when troubleshooting. Nginx writes two critical logs:

- **Access Log** (`/var/log/nginx/access.log`): Every request - who, when, what, status
- **Error Log** (`/var/log/nginx/error.log`): Problems, warnings, errors

Learning to read logs is THE most important troubleshooting skill.

## 2. The Task
Analyze the sample logs to find patterns and issues.

### Step 1: View Access Log
```bash
cat /var/log/nginx/access.log
```

**What to look for**:
- IP addresses (who)
- Timestamps (when)
- Request paths (what)
- Status codes (result: 200=OK, 404=Not Found, 502=Bad Gateway)
- User-Agent (browser/bot)

### Step 2: Find Errors
```bash
grep " 404 " /var/log/nginx/access.log
grep " 502 " /var/log/nginx/access.log
```

### Step 3: Identify Bot Traffic
```bash
grep "python-requests" /var/log/nginx/access.log
```

### Step 4: View Error Log
```bash
cat /var/log/nginx/error.log
```

**Error log shows**:
- Exact error message
- File paths
- Client IP
- Request details

### Step 5: Count Requests by IP
```bash
awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr
```

## 3. What just happened?
You learned to:
- Read access logs (request details)
- Filter by status code
- Identify bots vs humans
- Read error logs (root causes)
- Count requests per IP (detect patterns)

**Key Insight**: Logs tell the complete story. Always check logs first!

---
**Mindset**: "Logs are the truth."
