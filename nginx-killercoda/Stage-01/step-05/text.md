## 1. The Concept
**NEVER** restart Nginx without testing the configuration first!
A broken config will crash Nginx and take your site offline.

Use `nginx -t` to test before applying changes.

## 2. The Task
There's a broken config file. Find and fix the syntax error.

Run these commands:

```bash
sudo nginx -t
# Read the error message
sudo nano /etc/nginx/conf.d/broken.conf
# Fix the error (missing semicolon after 'listen 8080')
sudo nginx -t
# Should now pass
```

## 3. What just happened?
- `nginx -t`: Tests configuration syntax
- The error message told you exactly what's wrong
- After fixing, the test passed

**Always test before reload!**

---
**Mindset**: "Test first, apply second."
