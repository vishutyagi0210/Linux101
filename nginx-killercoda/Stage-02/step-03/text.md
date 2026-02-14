## 1. The Concept
By default, Nginx shows a 403 error if no index file exists. Enable `autoindex` to show a file listing instead.

**Real-world use**: Download directories, file repositories, backup listings.

## 2. The Task
Enable directory listing for the `/downloads` directory.

### Step 1: Configure autoindex
```bash
sudo nano /etc/nginx/sites-available/default
```

Add inside the `server { }` block:
```nginx
location /downloads/ {
    autoindex on;
    autoindex_exact_size off;
    autoindex_localtime on;
}
```

### Step 2: Reload and Test
```bash
sudo nginx -t
sudo systemctl reload nginx
curl http://localhost/downloads/
```

## 3. What just happened?
- `autoindex on`: Enables directory listing
- `autoindex_exact_size off`: Shows human-readable file sizes (1.2M instead of 1234567)
- `autoindex_localtime on`: Shows local time instead of GMT
- Nginx now displays an HTML file list

---
**Mindset**: "Sometimes users need to browse files."
