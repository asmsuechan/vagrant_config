vagrant ssh-config > ssh.config
#scp -F ssh.config conf_file/rails.conf vagrant@localhost:~/rails.conf
scp -F ssh.config nginx_conf_files/rails.conf vagrant@default:~/
scp -F ssh.config nginx_conf_files/nginx.conf vagrant@default:~/
