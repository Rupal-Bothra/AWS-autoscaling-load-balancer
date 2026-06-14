#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<h1>AWS Auto Scaling Project</h1>" > /var/www/html/index.html
echo "<h2>Server deployed using User Data Script</h2>" >> /var/www/html/index.html