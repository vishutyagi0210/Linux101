## 1. The Concept
**Virtual Hosts** (called Server Blocks in Nginx) let you host multiple websites on one server.
Each site has its own `server { }` block with a unique `server_name`.

## 2. The Task
Create a virtual host for `example.local`.

Run these commands:

```bash
sudo mkdir -p /var/www/example.local
echo "<h1>Welcome to example.local</h1>" | sudo tee /var/www/example.local/index.html

sudo nano /etc/nginx/sites-available/example.local
```

Add this content:
```nginx
server {
    listen 80;
    server_name example.local;
    root /var/www/example.local;
    index index.html;
}
```

Enable the site:
```bash
sudo ln -s /etc/nginx/sites-available/example.local /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
curl -H "Host: example.local" http://localhost
```

## 3. What just happened?
- Created a document root for the new site
- Configured a server block with `server_name`
- Enabled it by symlinking to `sites-enabled/`
- Tested with curl using Host header

---
**Mindset**: "One server, many websites."
