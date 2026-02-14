## 1. The Concept
Security headers protect users from attacks like clickjacking, MIME sniffing, and XSS.

**Real-world use**: Every production website should have these headers.

## 2. The Task
Add security headers to your site.

### Step 1: Configure Headers
```bash
sudo nano /etc/nginx/sites-available/default
```

Add inside the `server { }` block:
```nginx
add_header X-Frame-Options "SAMEORIGIN" always;
add_header X-Content-Type-Options "nosniff" always;
add_header X-XSS-Protection "1; mode=block" always;
```

### Step 2: Reload and Test
```bash
sudo nginx -t
sudo systemctl reload nginx
curl -I http://localhost
```

## 3. What just happened?
- **X-Frame-Options**: Prevents your site from being embedded in iframes (clickjacking protection)
- **X-Content-Type-Options**: Prevents browsers from MIME-sniffing (forces declared content type)
- **X-XSS-Protection**: Enables browser XSS filter
- `always`: Adds headers to all responses (even errors)

---
**Mindset**: "Security headers are non-negotiable."
