#!/bin/sh

#this script is ran as root in default.
#but it's not good.
#so i change run-user by using
#'runuser' command.
#fuckin nokogiri

yum -y install libxml2 libxslt libxml2-devel libxslt-devel
sudo runuser -l vagrant -c 'ruby -v'
echo "nokogiri install..."
sudo runuser -l vagrant -c 'gem install nokogiri -- --use-system-libraries'
echo "rails install..."
sudo runuser -l vagrant -c 'gem install rails'
