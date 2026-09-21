# ☁️ AWS EC2 & S3 Practical

A hands-on AWS cloud practical demonstrating **EC2 server deployment, Ubuntu administration, Nginx web hosting, SSH access, and Amazon S3 object storage**.

The project deploys a custom HTML webpage on an **AWS EC2 Ubuntu server** and uploads an image to **Amazon S3** with public object access.

---

## 🎯 Project Overview

### What I built

* 🖥️ Created an **AWS EC2 Ubuntu instance**
* 🔐 Connected to the server using **SSH from Windows CMD**
* 🐧 Managed the Ubuntu server using Linux commands
* 🌐 Installed and configured **Nginx**
* 🚀 Deployed a custom `index.html` webpage
* 🪣 Created an **Amazon S3 bucket**
* 🖼️ Uploaded an image to S3
* 🔗 Configured public access for the S3 object
* 🌍 Accessed both resources through public URLs

---

## 🏗️ Architecture

```text
                    AWS Cloud
                       │
          ┌────────────┴────────────┐
          │                         │
       EC2 Instance              S3 Bucket
       Ubuntu Linux             Image Storage
          │                         │
        Nginx                  Public Object URL
          │                         │
      index.html                    │
          │                         │
          └────────────┬────────────┘
                       │
                    Browser
```

### Deployment Flow

```text
EC2 → Ubuntu → Nginx → index.html → Public IP → Browser
```

```text
S3 Bucket → Image → Public Object URL → Browser
```

---

## ☁️ EC2 Web Server

### Instance Configuration

| Setting          | Configuration       |
| ---------------- | ------------------- |
| Operating System | Ubuntu              |
| Instance Type    | T8i.micro           |
| Key Pair         | `demo-server-key`   |
| Security Group   | SSH (22), HTTP (80) |
| Web Server       | Nginx               |

### 🔐 SSH Connection

Connected to the EC2 instance from Windows CMD:

```bash
ssh -i "demo-server-key.pem" ubuntu@<EC2-PUBLIC-IP>
```

On Windows, private-key permissions were configured using:

```cmd
icacls "demo-server-key.pem" /inheritance:r
icacls "demo-server-key.pem" /grant:r "%USERNAME%:R"
```

### 🌐 Nginx Setup

Update Ubuntu packages:

```bash
sudo apt update
```

Install Nginx:

```bash
sudo apt install nginx -y
```

Check the Nginx service:

```bash
sudo systemctl status nginx
```

### 🚀 Deploying the Webpage

The webpage was deployed to Nginx's default web directory:

```bash
cd /var/www/html
```

The custom webpage was created using:

```bash
sudo nano /var/www/html/index.html
```

The complete `index.html` file is included in this repository.

---

## 🪣 Amazon S3

### Bucket

Created an Amazon S3 bucket:

```text
demo-image1
```

### 🖼️ Image Upload

The image was uploaded through:

```text
S3 → Bucket → Upload → Add Files → Upload
```

### 🔓 Public Object Access

Public access was configured for the uploaded object so it could be accessed through its S3 Object URL.

Example policy:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadImages",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::YOUR-BUCKET-NAME/*"
    }
  ]
}
```

> ⚠️ Public S3 access was enabled for this practical demonstration. In production environments, access should be restricted according to the application's security requirements.

---

## 🛠️ Technologies & Services

| Technology       | Purpose                 |
| ---------------- | ----------------------- |
| ☁️ **AWS EC2**   | Cloud virtual server    |
| 🪣 **Amazon S3** | Object storage          |
| 🐧 **Ubuntu**    | Server operating system |
| 🌐 **Nginx**     | Web server              |
| 🔐 **SSH**       | Remote server access    |
| 💻 **Linux**     | Server administration   |
| 🌎 **HTML**      | Custom webpage          |

---

## 🎓 Key Learning Outcomes

Through this practical, I gained hands-on experience with:

* AWS EC2 instance deployment
* Ubuntu server administration
* SSH-based remote access
* Windows SSH key permissions
* Nginx installation and configuration
* Linux server commands
* EC2 security-group configuration
* Hosting a webpage on a cloud server
* Amazon S3 bucket management
* Uploading and accessing S3 objects
* Public cloud resource URLs

---

## ✅ Result

| Resource         | Result                                     |
| ---------------- | ------------------------------------------ |
| 🖥️ EC2          | Custom webpage successfully hosted         |
| 🌐 Nginx         | Successfully serving `index.html`          |
| 🪣 S3            | Image successfully uploaded                |
| 🔗 S3 Object URL | Image successfully accessed                |

---
