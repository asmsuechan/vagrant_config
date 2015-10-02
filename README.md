# Setup rails environment for vagrant_centos7

##setup
in order to setup, run as follows:
```
./setup.sh
```

##structure
```
.
├── Vagrantfile
├── config_server.sh
├── install
│   ├── install_mysql.sh
│   ├── install_nginx.sh
│   ├── install_rails.sh
│   └── install_ruby.sh
├── nginx_conf_files
│   ├── nginx.conf
│   └── rails.conf
├── set_files_form_local.sh
├── set_nginx_config_files.sh
└── setup.sh
```

- config_server.sh  
'unicorn' and 'htop' is installed

- install/  
install particular component

- nginx_conf_files/  
files for setting nginx

- sent_files_from_local.sh  
sending files to vagrant

- set_nginx_config_files.sh  
move/remove files to prepare

- setup.sh  
installer

##error handling
if your computer says
```
./setup.sh: Permission denied
```
run the following command:
```
$ sudo chmod +x setup.sh
```
