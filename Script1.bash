#!/bin/bash

# Update the package manager
sudo apt-get update

# Install Git
sudo apt-get install git

# Clone the DNS package from Github
git clone https://github.com/isc-projects/bind9.git

# Change into the bind9 directory
cd bind9

# Install the DNS package
sudo apt-get install -y .

# Go back to the home directory
cd ~

# Clone the DHCP package from Github
git clone https://github.com/isc-projects/dhcp.git

# Change into the dhcp directory
cd dhcp

# Install the DHCP package
sudo apt-get install -y .

# Go back to the home directory
cd ~

# Clone the Apache package from Github
git clone https://github.com/apache/httpd.git

# Change into the httpd directory
cd httpd

# Install the Apache package
sudo apt-get install -y .

# Start the Apache service
sudo service apache2 start

# Enable the Apache service to start on boot
sudo systemctl enable apache2
