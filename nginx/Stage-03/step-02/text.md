## 1. The Concept
Use `proxy_pass` to forward requests to a backend server.

## 2. The Task
Configure Nginx to proxy requests to the backend.

```bash
sudo nano /etc/nginx/sites-available/default
```

Add inside `server { }`:
```nginx
location /api/ {
    proxy_pass http://127.0.0.1:8080/;
}
```

Reload and test:
```bash
sudo nginx -t
sudo systemctl reload nginx
curl http://localhost/api/
```

## 3. What just happened?
- Requests to `/api/` are forwarded to `http://127.0.0.1:8080/`
- The backend processes the request
- Nginx returns the response to the client

---
**Mindset**: "proxy_pass is the bridge."
