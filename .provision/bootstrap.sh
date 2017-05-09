#!/bin/bash

echo "(Setting up your Vagrant box...)"

echo "(Updating apt-get...)"
sudo apt-get update > /dev/null 2>&1

# EasyEngine
echo "(Installing EasyEngine...)"
wget -qO ee rt.cx/ee && sudo bash ee

echo "(Setting Ubuntu (user) password to \"easyengine\"...)"
echo "ubuntu:easyengine" | chpasswd

echo "+---------------------------------------------------------+"
echo "|                      S U C C E S S                      |"
echo "+---------------------------------------------------------+"
echo "|   You're good to go! You can now view your server at    |"
echo "|                 \"127.0.0.1/\" in a browser.              |"
echo "|                                                         |"
echo "|  If you haven't already, I would suggest editing your   |"
echo "|     hosts file with \"127.0.0.1  easyengine.dev\"    |"
echo "|         so that you can view your server with           |"
echo "|      \"easyengine.dev/\" instead of \"127.0.0.1/\"     |"
echo "|                      in a browser.                      |"
echo "|                                                         |"
echo "|          You can SSH in with ubuntu / vagrant           |"
echo "|                                                         |"
echo "+---------------------------------------------------------+"
