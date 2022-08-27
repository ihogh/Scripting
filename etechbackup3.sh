#!/bin/bash
#This script backs up all the contents of /var/log/auth.log 
#and transfers in a remote server
#Author: Team3 Group2 EtechApp 
read -p "Please enter your backup directory name: " bkupDir
sudo mkdir $bkupDir && cd $bkupDir
sudo cp /var/log/auth.log monitor.log
sudo tar -cvf etechbackup.tar $(pwd)
sudo scp sshpass -p "t3g2team" etechbackup.tar etechapp@172.31.95.71:/tmp
