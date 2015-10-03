#!/bin/sh

install unicorn
echo "unicorn install..."
sudo runuser -l vagrant -c 'gem install unicorn'

#install tools
echo "htop install..."
sudo rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo yum -y install htop

echo "nodejs install..."
sudo yum groupinstall 'Development tools'
sudo runuser -l vagrant -c 'curl -O http://nodejs.org/dist/v0.10.32/node-v0.10.32.tar.gz'
sudo runuser -l vagrant -c 'tar xvf node-v0.10.32.tar.gz'
sudo runuser -l vagrant -c 'cd node-v0.10.32 ; ./configure --prefix=/usr/local'
sudo runuser -l vagrant -c 'cd node-v0.10.32 ; make'
sudo runuser -l vagrant -c 'cd node-v0.10.32 ; sudo make install'


