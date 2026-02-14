## 1. The Concept
**Virtual Hosts** (Server Blocks in Nginx) allow you to host multiple websites on one server. Each site has its own `server { }` block with a unique `server_name`.

**Real-world use**: One server hosting `example.com`, `blog.example.com`, and `api.example.com`.

## 2. The Task
Create a virtual host for `shop.local`.

### Step 0: Verify Nginx is Installed
First, check if Nginx is running:
```bash
systemctl status nginx
```

If you see "could not be found", install Nginx:
```bash
sudo apt update
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
```

Verify it's running:
```bash
systemctl status nginx
curl http://localhost
```

### Step 1: Create Document Root
```bash
sudo mkdir -p /var/www/shop.local
echo "<h1>Welcome to Shop</h1><p>This is shop.local</p>" | sudo tee /var/www/shop.local/index.html
```

### Step 2: Create Server Block
```bash
sudo nano /etc/nginx/sites-available/shop.local
```

Add this configuration:
```nginx
server {
    listen 80;
    server_name shop.local;
    root /var/www/shop.local;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### Step 3: Disable Default Site (Important!)
The default Nginx site catches all requests. We need to disable it:
```bash
sudo rm /etc/nginx/sites-enabled/default
```

### Step 4: Enable the Site
```bash
sudo ln -s /etc/nginx/sites-available/shop.local /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```

### Step 5: Test
```bash
curl -H "Host: shop.local" http://localhost
```

## 3. What just happened?
- Created a separate document root for the new site
- Configured a server block with `server_name shop.local`
- Enabled it by symlinking to `sites-enabled/`
- Tested with curl using Host header (simulates DNS)

---

## 💡 Troubleshooting

### If you see the default Nginx page instead of "Welcome to Shop":

**MOST COMMON ISSUE: Default site is still enabled**

The default Nginx site catches all requests. Disable it:
```bash
sudo rm /etc/nginx/sites-enabled/default
sudo systemctl reload nginx
curl -H "Host: shop.local" http://localhost
```

You should now see "Welcome to Shop"!

---

**Other checks:**

**1. Check if the config file exists:**
```bash
ls -la /etc/nginx/sites-available/shop.local
```

**2. Check if the symlink exists:**
```bash
ls -la /etc/nginx/sites-enabled/shop.local
```

**3. Check if the index.html exists:**
```bash
cat /var/www/shop.local/index.html
```

**4. Test the configuration:**
```bash
sudo nginx -t
```

**5. Reload Nginx:**
```bash
sudo systemctl reload nginx
```

---
**Key Learning:** When using virtual hosts, disable the default site or it will catch all requests!

---
**Mindset**: "One server, unlimited websites."

