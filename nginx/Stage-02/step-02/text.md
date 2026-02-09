## 1. The Concept
When errors occur (404, 500, etc.), Nginx shows default error pages.
You can customize these for better branding and user experience.

## 2. The Task
Create a custom 404 error page.

Run these commands:

```bash
echo "<h1>404 - Page Not Found</h1><p>Oops! This page doesn't exist.</p>" | sudo tee /var/www/html/404.html

sudo nano /etc/nginx/sites-available/default
```

Add this inside the `server { }` block:
```nginx
error_page 404 /404.html;
location = /404.html {
    internal;
}
```

Reload and test:
```bash
sudo nginx -t
sudo systemctl reload nginx
curl http://localhost/nonexistent
```

## 3. What just happened?
- Created a custom 404 page
- Configured `error_page` directive
- `internal` prevents direct access to `/404.html`
- Tested by requesting a nonexistent page

---
**Mindset**: "Errors can be beautiful."
