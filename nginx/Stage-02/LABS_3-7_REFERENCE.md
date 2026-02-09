## Lab 3: Directory Listing

## 1. The Concept
By default, Nginx shows a 403 error if no index file exists.
Enable `autoindex` to show a file listing instead.

## 2. The Task
```bash
sudo nano /etc/nginx/sites-available/default
```
Add inside `server { }`:
```nginx
location /downloads/ {
    autoindex on;
}
```
```bash
sudo nginx -t && sudo systemctl reload nginx
curl http://localhost/downloads/
```

---

## Lab 4: MIME Types

## 1. The Concept
Nginx uses `/etc/nginx/mime.types` to determine Content-Type headers.
This tells browsers how to handle files (.html, .css, .js, .json, etc.).

## 2. The Task
```bash
cat /etc/nginx/mime.types | grep json
echo '{"status":"ok"}' | sudo tee /var/www/html/api.json
curl -I http://localhost/api.json
```

---

## Lab 5: Security Headers

## 1. The Concept
Security headers protect users from attacks (clickjacking, MIME sniffing, etc.).

## 2. The Task
```bash
sudo nano /etc/nginx/sites-available/default
```
Add inside `server { }`:
```nginx
add_header X-Frame-Options "SAMEORIGIN";
add_header X-Content-Type-Options "nosniff";
```
```bash
sudo nginx -t && sudo systemctl reload nginx
curl -I http://localhost
```

---

## Lab 6: Access Control

## 1. The Concept
Restrict access by IP address using `allow` and `deny`.

## 2. The Task
```bash
sudo nano /etc/nginx/sites-available/default
```
Add inside `server { }`:
```nginx
location /admin/ {
    allow 127.0.0.1;
    deny all;
}
```

---

## Lab 7: Basic Authentication

## 1. The Concept
Password-protect directories with htpasswd.

## 2. The Task
```bash
sudo apt install -y apache2-utils
sudo htpasswd -c /etc/nginx/.htpasswd admin
sudo nano /etc/nginx/sites-available/default
```
Add:
```nginx
location /secure/ {
    auth_basic "Restricted";
    auth_basic_user_file /etc/nginx/.htpasswd;
}
```
```bash
sudo nginx -t && sudo systemctl reload nginx
curl -u admin:password http://localhost/secure/
```
