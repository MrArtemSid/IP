#!/bin/bash
sudo pacman --noconfirm -Sy apache php-apache mysql phpmyadmin php-mcrypt
sudo mysqld --initialize --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld
sudo mysql_secure_installation
