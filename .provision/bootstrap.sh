#!/bin/bash

# By storing the date now, we can calculate the duration of provisioning at the
# end of this script.
start_seconds="$(date +%s)"

echo "Setting up your EasyEngine-Ubuntu-Vagrant box..."

# echo "Updating apt-get..."
# sudo apt-get update

# EasyEngine

echo "Installing EasyEngine..."
echo -e "[user]\n\tname = Your Name\n\temail = your@email.com" > ~/.gitconfig
wget -qO ee rt.cx/ee && sudo bash ee

echo "Installing EasyEngine stack..."
sudo ee stack install

echo "Setting Ubuntu (user) password to \"easyengine\"..."
echo "ubuntu:easyengine" | chpasswd

#set +xv
# And it's done
end_seconds="$(date +%s)"

echo "+---------------------------------------------------------+"
echo "|                      S U C C E S S                      |"
echo "|                Provisioning completed in                |"
echo "|                       "$(( end_seconds - start_seconds ))" seconds                |"
echo "+---------------------------------------------------------+"
echo "|   You're good to go! You can now view your server at    |"
echo "|      \"192.168.50.4/\" or \"ee.dev\" in a browser.      |"
echo "|                                                         |"
echo "|           You can SSH with ubuntu / easyengine          |"
echo "|                                                         |"
echo "+---------------------------------------------------------+"
