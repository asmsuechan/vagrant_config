dir=pwd
if vagrant global-status | grep "${dir}" >/dev/null 2>&1; then
	echo "vagrant alredy up."
else
	vagrant up --no-provision
fi

#transport *.conf from local to vagrant
./set_files_from_local.sh
vagrant provision


#after run setup, edit /etc/nginx/*.conf files
