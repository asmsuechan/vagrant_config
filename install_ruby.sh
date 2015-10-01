#!/bin/sh

#this script is ran as root in default.
#but it's not good.
#so i change run-user by using
#'runuser' command.

#check existence
if [ -e /home/vagrant/.rbenv != false ]; then
	echo "rbenv install..."
	git clone https://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
else
	echo ".rbenv already exist."
fi

#export rbenv's path
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bash_profile
echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bash_profile

#apply .bash_profile
source /home/vagrant/.bash_profile

#check rbenv's version
sudo runuser -l vagrant -c 'rbenv --version'

#check existence
if [ ! -e /home/vagrant/.rbenv/plugins/ruby-build ]; then
	echo "ruby-build install..."
	git clone https://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build  
else
	echo "ruby-build already exist."
fi

#check list
if [ ! -e "/home/vagrant/.rbenv/versions/2.1.6" ]; then
	echo "ruby install..."
	sudo runuser -l vagrant -c 'rbenv install 2.1.6'
else
	echo "ruby 2.1.6 already exist."
fi

#switch version of ruby
sudo runuser -l vagrant -c 'rbenv global 2.1.6'
