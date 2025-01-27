#!/bin/bash

#sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

echo "<h1> provisioners applie </h1>" | sudo tee /var/www/html/index.html
sudo chmod 755 /var/www/html/index.html
