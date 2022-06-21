#! /bin/bash
# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo echo '<h1>Welcome to Terraform Demo</h1>' | sudo tee /var/www/html/index.html
