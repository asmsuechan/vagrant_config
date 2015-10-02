#!/bin/sh

#install mysql
echo "mysql install starting..."

base_url="http://downloads.mysql.com/archives/get/file/"
files=("MySQL-server-5.6.26-1.linux_glibc2.5.x86_64.rpm" "MySQL-client-5.6.26-1.linux_glibc2.5.x86_64.rpm" "MySQL-shared-compat-5.6.26-1.linux_glibc2.5.x86_64.rpm" "MySQL-devel-5.6.26-1.linux_glibc2.5.x86_64.rpm" "MySQL-shared-5.6.26-1.linux_glibc2.5.x86_64.rpm")
home=/home/vagrant/

#remove mariadb because of mariadb and mysql confliction
if yum list installed mariadb-libs >/dev/null 2>&1; then
	echo "removing mariadb-libs..."
	sudo yum -y remove mariadb-libs
fi

#download & install MySQL(s)
for file in ${files[@]}; do
    echo "$home$file"
    if yum list installed ${file%.*} >/dev/null 2>&1; then
        echo "file already installed."
    else
		echo "downloading $file"
        sudo runuser -l vagrant -c "wget '$base_url$file'"
		echo "${file%.*} install..."
		sudo runuser -l vagrant -c "sudo yum install -y $home$file"
    fi
done

#install asociated package
sudo yum -y install perl-Data-Dumper
#set database directory
sudo mysql_install_db --datadir=/var/lib/mysql --user=mysql

echo "mysql install finished."
