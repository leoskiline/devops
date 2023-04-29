#!/usr/bin/env bash
echo "Installing apache and setting it up..."
yum install -y httpd >/dev/null 2>&1
cp -r /vagrant/html/* /var/www/html/
systemctl enable httpd.service
systemctl start httpd.service