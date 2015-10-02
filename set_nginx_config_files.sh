if [ -e /etc/nginx/nginx.conf ]; then
	echo "/etc/nginx/nginx.conf already exist."
else
	sudo runuser -l vagrant -c 'sudo rm /etc/nginx/nginx.conf'
fi

if [ -e /etc/nginx/conf.d/default.conf ]; then
	echo "/etc/nginx/conf.d/default.conf already exist."
else
	sudo runuser -l vagrant -c 'sudo rm /etc/nginx/conf.d/default.conf'
fi

if [ -e /home/vagrant/nginx.conf ]; then
	sudo runuser -l vagrant -c 'sudo mv /home/vagrant/nginx.conf /etc/nginx'
else
	echo "/home/vagrant/nginx.conf already moved."
fi

if [ -e /home/vagrant/rails.conf ]; then
	sudo runuser -l vagrant -c 'sudo mv /home/vagrant/rails.conf /etc/nginx/conf.d'
else
	echo "/home/vagrant/rails.conf alredy moved."
fi
