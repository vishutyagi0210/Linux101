## 1. The Concept
Password-protect directories using HTTP Basic Authentication with htpasswd.

**Real-world use**: Staging sites, private content, admin areas.

## 2. The Task
Password-protect the `/secure` directory.

### Step 1: Install htpasswd
```bash
sudo apt install -y apache2-utils
```

### Step 2: Create Password File
```bash
sudo htpasswd -c /etc/nginx/.htpasswd admin
# Enter password: admin123
```

### Step 3: Create Secure Directory
```bash
sudo mkdir -p /var/www/html/secure
echo "<h1>Secret Content</h1>" | sudo tee /var/www/html/secure/index.html
```

### Step 4: Configure Basic Auth
```bash
sudo nano /etc/nginx/sites-available/default
```

Add inside the `server { }` block:
```nginx
location /secure/ {
    auth_basic "Restricted Area";
    auth_basic_user_file /etc/nginx/.htpasswd;
}
```

### Step 5: Reload and Test
```bash
sudo nginx -t
sudo systemctl reload nginx
curl http://localhost/secure/  # Should get 401
curl -u admin:admin123 http://localhost/secure/  # Should work
```

## 3. What just happened?
- `htpasswd`: Created encrypted password file
- `auth_basic`: Enables authentication with a realm name
- `auth_basic_user_file`: Points to password file
- Without credentials: 401 Unauthorized
- With credentials: Access granted

---
**Mindset**: "Passwords add a layer of protection."
