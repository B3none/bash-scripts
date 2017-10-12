#!/bin/bash -e

echo -n "Please enter the PhpStorm download url: "
read url
 
# Download file from url
echo "Downloading PhpStorm to ~/Desktop"
cd ~/Desktop
wget ${url} --no-check-certificate
tar -xzf ~/Desktop/PhpStorm*
rm ~/Desktop/PhpStorm*

# Remove old Phpstorm
echo "Removing old PhpStorm"
rm -rf ~/Documents/PhpStorm

# Copy new Phpstorm
echo "Copying new PhpStorm"
mv ~/Desktop/PhpStorm* ~/Documents/PhpStorm

# Finish
echo "New PhpStorm has been installed!"

