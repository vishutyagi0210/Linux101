## 1. The Concept
Default Nginx error pages are generic. Custom error pages improve user experience and branding.

**Real-world use**: Professional sites show branded 404 pages instead of "404 Not Found".

## 2. The Task
Create a custom 404 error page.

### Step 1: Create Error Page
```bash
cat << 'EOF' | sudo tee /var/www/html/404.html
<!DOCTYPE html>
<html>
<head><title>Page Not Found</title></head>
<body>
    <h1>404 - Oops!</h1>
    <p>The page you're looking for doesn't exist.</p>
    <a href="/">Go Home</a>
</body>
</html>
EOF
```

### Step 2: Configure Nginx
Since we deleted the default site in Lab 1, we'll add the error page to our `shop.local` virtual host:
```bash
sudo nano /etc/nginx/sites-available/shop.local
```

Add inside the `server { }` block (after the `index` line):
```nginx
error_page 404 /404.html;
location = /404.html {
    internal;
}
```

Your complete config should look like:
```nginx
server {
    listen 80;
    server_name shop.local;
    root /var/www/html;
    index index.html;

    error_page 404 /404.html;
    location = /404.html {
        internal;
    }

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### Step 3: Reload and Test
```bash
sudo nginx -t
sudo systemctl reload nginx
curl -H "Host: shop.local" http://localhost/nonexistent-page
```

## 3. What just happened?
- Created a custom HTML error page
- Configured `error_page` directive to use it
- `internal` prevents direct access to `/404.html`
- Tested by requesting a nonexistent page

---
**Mindset**: "Errors should be helpful, not scary."
