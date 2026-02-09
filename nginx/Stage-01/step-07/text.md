## 1. The Concept
When a site is "down," the HTTP status code tells you WHY:

- **404 Not Found**: File/page doesn't exist
- **502 Bad Gateway**: Backend server not responding
- **503 Service Unavailable**: Server overloaded or permissions issue

**Your job**: Read the error, check logs, identify root cause, fix it.

## 2. The Task
Three scenarios are broken. Diagnose and understand each one.

### Scenario 1: 404 Not Found

**Test it**:
```bash
curl http://localhost/missing.html
```

**What happened?**
- Status: `404 Not Found`
- Meaning: The file `/var/www/html/missing.html` doesn't exist

**Check the error log**:
```bash
tail -n 5 /var/log/nginx/error.log
```

You'll see: `open() "/var/www/html/missing.html" failed (2: No such file or directory)`

**Root Cause**: File doesn't exist.

**How to fix** (for learning - don't fix yet):
```bash
echo "<h1>Found!</h1>" | sudo tee /var/www/html/missing.html
curl http://localhost/missing.html  # Now returns 200
```

---

### Scenario 2: 502 Bad Gateway

**Test it**:
```bash
curl http://localhost:8081/
```

**What happened?**
- Status: `502 Bad Gateway`
- Meaning: Nginx tried to proxy to a backend, but the backend isn't running

**Check the error log**:
```bash
tail -n 5 /var/log/nginx/error.log
```

You'll see: `connect() failed (111: Connection refused) while connecting to upstream`

**Root Cause**: Backend server on port 9999 doesn't exist.

**How to fix** (conceptual):
- Start the backend application
- Or remove the proxy configuration

---

### Scenario 3: 503 Service Unavailable

**Test it**:
```bash
curl http://localhost:8082/
```

**What happened?**
- Status: `403 Forbidden` (not 503, but similar - permissions issue)
- Meaning: Nginx can't read the file

**Check the error log**:
```bash
tail -n 5 /var/log/nginx/error.log
```

You'll see: `open() "/var/www/restricted/index.html" failed (13: Permission denied)`

**Root Cause**: File has no read permissions.

**How to fix**:
```bash
sudo chmod 644 /var/www/restricted/index.html
curl http://localhost:8082/  # Now works
```

---

## 3. What just happened?

You learned the **troubleshooting workflow**:

1. **Test** → Get the error
2. **Read logs** → Find the root cause
3. **Understand** → Know what the error means
4. **Fix** → Apply the solution

### Key Takeaways:
- **404** = File missing
- **502** = Backend down/unreachable
- **503/403** = Permissions or overload

**Always check error logs first!**

---

## 💡 Troubleshooting Hints

When debugging Nginx issues, follow this systematic approach:

### 1. Check if Nginx is Running
```bash
systemctl status nginx
```

**If not running:**
```bash
sudo systemctl start nginx
sudo systemctl status nginx
```

### 2. Check Configuration Syntax
```bash
sudo nginx -t
```

**If errors:** Fix the config file mentioned in the error message.

### 3. Check Error Logs
```bash
sudo tail -n 20 /var/log/nginx/error.log
```

**Look for:**
- File paths (404 errors)
- Connection refused (502 errors)
- Permission denied (403 errors)

### 4. Check Access Logs
```bash
sudo tail -n 20 /var/log/nginx/access.log
```

**Look for:**
- Status codes (200, 404, 502, 503)
- Request patterns
- IP addresses

### 5. Verify File Permissions
```bash
ls -la /var/www/html/
```

**Files should be:** `644` (readable by Nginx)  
**Directories should be:** `755` (executable/browsable)

### Common Issues Checklist:
- [ ] Is Nginx service running? (`systemctl status nginx`)
- [ ] Is config valid? (`nginx -t`)
- [ ] Are error logs showing anything? (`tail /var/log/nginx/error.log`)
- [ ] Do files exist? (`ls -la /var/www/html/`)
- [ ] Are permissions correct? (`chmod 644` for files, `chmod 755` for dirs)
- [ ] Is backend running? (for 502 errors)

---
**Mindset**: "HTTP codes + logs + service status = root cause."
