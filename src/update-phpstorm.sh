#!/bin/bash

if [ "$(whoami)" != "root" ]
then
    echo "You must run this command with sudo."
    exit 1
fi

echo "Downloading the latest PhpStorm to /tmp"
cd /tmp
curl -Lo PhpStorm.tar.gz "https://data.services.jetbrains.com/products/download?code=PS&platform=linux"
tar -xzf /tmp/PhpStorm.tar.gz
rm /tmp/PhpStorm.tar.gz

echo "Removing old PhpStorm"
rm -rf ~/Documents/Phpstorm

echo "Copying new PhpStorm"
mv /tmp/PhpStorm* ~/Documents/Phpstorm

echo "New PhpStorm has been installed"