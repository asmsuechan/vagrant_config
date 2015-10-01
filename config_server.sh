#!/bin/sh

#set nginx

#sudo rm /etc/nginx/nginx.conf
#sudo git clone 
#sudo mkdir /etc/nginx/conf.d
#sudo cd /etc/nginx
#git clone 

install unicorn
echo "unicorn install..."
sudo runuser -l vagrant -c 'gem install unicorn'

#install tools
echo "htop install..."
sudo rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo yum -y install htop

##install mysql
#base_url="http://downloads.mysql.com/archives/get/file/"
#files=("MySQL-server-5.6.26-1.linux_glibc2.5.x86_64.rpm" "MySQL-client-5.6.26-1.linux_glibc2.5.x86_64.rpm" "MySQL-shared-compat-5.6.26-1.linux_glibc2.5.x86_64.rpm" "MySQL-devel-5.6.26-1.linux_glibc2.5.x86_64.rpm")
#
#for file in ${files[@]}; do
#	echo "/home/vagrant/$file"
#	if [ -e "/home/vagrant/$file" ]; then
#		echo "file already exist."
#	else
#		sudo runuser -l vagrant -c "wget '$base_url$file'"
#	fi
#done
#echo "download finished"
#
##remove mariadb because of mariadb and mysql confliction
#sudo yum -y remove mariadb-libs
#
#echo "mysql rpms install..."
#for file in ${files[@]}; do
#	echo "$file install..."
#	sudo runuser -l vagrant -c "sudo yum install -y /home/vagrant/$file"
#done
#
