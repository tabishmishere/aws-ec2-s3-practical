# AWS EC2 + Linux + Nginx Practical

# STEP 1: Update Ubuntu package information

sudo apt update

# STEP 2: Install Nginx web server

sudo apt install nginx -y

# STEP 6: Go to Nginx's default web directory

cd /var/www/html

# STEP 7: List files in the web directory

ls


# STEP 8: Create/edit the webpage

sudo nano /var/www/html/index.html

# STEP 9: Check the contents of index.html

cat /var/www/html/index.html