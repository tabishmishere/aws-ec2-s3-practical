# AWS EC2 + Ubuntu + Nginx Practical

# 1. Update Ubuntu Package Information

sudo apt update

# 2. Install Nginx Web Server

sudo apt install nginx -y

# 3. Check Nginx Service Status

sudo systemctl status nginx

# 4. Go to Nginx Web Directory

cd /var/www/html

# 5. List Files in the Web Directory

ls

# 6. Create / Edit the HTML Webpage

sudo nano /var/www/html/index.html

# 7. View the Webpage Source

cat /var/www/html/index.html

# 8. Restart Nginx

sudo systemctl restart nginx

# Deployment Flow

# AWS EC2

# ↓

# Ubuntu

# ↓

# Nginx

# ↓

# /var/www/html/index.html

# ↓

# EC2 Public IP

# ↓

# Web Browser