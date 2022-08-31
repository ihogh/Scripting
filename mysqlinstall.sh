#!/bin/bash
#Author: Iho Tech
echo "Welcome to mysql database Installation Wizard!"
#sudo hostnamectl set-hostname mysqlserver
sudo apt update -y
sudo apt install mysql-server
sudo mysql
ALTER USER 'root'@localhost' IDENTIFIED WITH mysql_native_password by '23IhoDB&*34'
sudo mysql_secure_installation
