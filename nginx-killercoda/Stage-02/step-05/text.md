## 1. The Concept
Restrict access to specific directories by IP address using `allow` and `deny` directives.

**Real-world use**: Admin panels, internal tools, staging environments.

## 2. The Task
Restrict `/admin` to localhost only.

### Step 1: Create Admin Directory
```bash
sudo mkdir -p /var/www/html/admin
echo "<h1>Admin Panel</h1>" | sudo tee /var/www/html/admin/index.html
```

### Step 2: Configure Access Control
```bash
sudo nano /etc/nginx/sites-available/default
```

Add inside the `server { }` block:
```nginx
location /admin/ {
    allow 127.0.0.1;
    deny all;
}
```

### Step 3: Reload and Test
```bash
sudo nginx -t
sudo systemctl reload nginx
curl http://localhost/admin/  # Should work (127.0.0.1)
```

## 3. What just happened?
- `allow 127.0.0.1`: Permits localhost
- `deny all`: Blocks everyone else
- Order matters: First match wins
- External IPs would get 403 Forbidden

**Production tip**: Use IP ranges for office networks (`allow 192.168.1.0/24;`)

---
**Mindset**: "Not everyone should access everything."
