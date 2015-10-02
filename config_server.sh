#!/bin/sh

install unicorn
echo "unicorn install..."
sudo runuser -l vagrant -c 'gem install unicorn'

#install tools
echo "htop install..."
sudo rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo yum -y install htop
