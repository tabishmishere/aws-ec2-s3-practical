☁️ AWS EC2 & S3 Practical

Hands-on AWS practical covering EC2, Ubuntu, Nginx, SSH, and Amazon S3.

🎯 Objective

Deploy a custom webpage on an AWS EC2 Ubuntu server using Nginx, and upload an image to Amazon S3 with public access.

🖥️ EC2 Web Server
1. EC2 Instance

Created an Ubuntu EC2 instance with:

Configuration	Details
OS	Ubuntu
Instance Type	T8i.micro
Key Pair	demo-server-key
Security Group	SSH (22), HTTP (80)
2. SSH Connection

Connected to the EC2 instance from Windows CMD:

ssh -i "demo-server-key.pem" ubuntu@<EC2-PUBLIC-IP>


Fixed the private-key permission issue using:

icacls "demo-server-key.pem" /inheritance:r
icacls "demo-server-key.pem" /grant:r "%USERNAME%:R"

3. Ubuntu & Nginx Setup

Updated Ubuntu packages:

sudo apt update


Installed Nginx:

sudo apt install nginx -y


Verified the Nginx service:

sudo systemctl status nginx


Result: Active: active (running)

4. Deploy Website

Opened the Nginx web directory:

cd /var/www/html


Checked the directory:

ls


Edited the webpage:

sudo nano /var/www/html/index.html


The custom webpage is included in this repository as index.html.

5. Website Result

The deployed webpage was accessed through the EC2 public IP:

http://<EC2-PUBLIC-IP>/


Deployment flow:

EC2 → Ubuntu → Nginx → index.html → Public IP → Browser

🪣 Amazon S3
1. Create Bucket

Created an S3 bucket through the AWS Management Console.

Bucket: demo-image1

2. Upload Image

Uploaded an image using:

S3 → Bucket → Upload → Add Files → Upload

3. Public Access

Configured the required S3 permissions to allow public access to the uploaded image.

Example bucket policy:

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


⚠️ Public access was enabled for this practical only. Public S3 access should be used carefully.

4. Test Object URL

Copied the uploaded image's Object URL and opened it in a browser.

Result: The image was displayed successfully.

S3 flow:

S3 Bucket → Image → Public Object URL → Browser

🛠️ Technologies

☁️ AWS EC2 — Virtual server

🐧 Ubuntu — Operating system

🌐 Nginx — Web server

🪣 Amazon S3 — Cloud storage

🔐 SSH — Remote server access

💻 Linux — Server management

🌎 HTML — Webpage

📁 Project Structure
aws-ec2-s3-practical/
│
├── README.md
├── commands.sh
└── index.html

File	Description
README.md	Practical documentation
commands.sh	Linux/Shell commands used
index.html	Custom webpage deployed on EC2
🎓 Key Learning Outcomes

Created and configured an AWS EC2 instance.

Connected to Ubuntu using SSH.

Managed SSH key permissions on Windows.

Installed and configured Nginx.

Deployed a custom HTML webpage.

Worked with Linux directories and commands.

Configured EC2 security-group ports.

Created and managed an S3 bucket.

Uploaded an image to S3.

Configured public access for an S3 object.

Accessed AWS resources through public URLs.

Documented the practical using GitHub.

✅ Final Result
Service	Result
EC2	Custom webpage successfully hosted using Ubuntu + Nginx
S3	Image successfully uploaded and accessed through a public URL
GitHub	Practical work and source files documented in a repository
🔐 Security Note

For security reasons, this repository does not contain:

AWS .pem private keys

AWS Access Keys

AWS Secret Keys

Passwords

Other private credentials

⭐ Conclusion

This practical provided hands-on experience with AWS cloud infrastructure, Linux server administration, web hosting, and cloud storage using EC2 and S3.
