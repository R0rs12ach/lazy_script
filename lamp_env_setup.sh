#! /bin/bash -
#########################################################################
# File Name: lamp_env_setup.sh 
# Author: R0rs12ach
# Mail: R0rs12ach@gmail.com
# Created Time: Wed 13 July 2016 03:46:23 PM CST
# Usage: sh lamp_env_setup.sh 
# Description: auto install apache php mysql develop enviroment for wordpress
# Attention: the best way to do this job is docker
#########################################################################

#首先安装apache
sudo yum install httpd
sudo service httpd start

#然后安装mysql
sudo yum install mysql-server
sudo service mysqld start

#最后安装php
sudo yum install php php-mysql
sudo yum install php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc

#默认开机自启动apache和mysql
sudo chkconfig httpd on
sudo chkconfig mysqld on

#测试是否安装成功
touch /var/www/html/info.php
echo "<?php phpinfo(); ?>" >> !$
