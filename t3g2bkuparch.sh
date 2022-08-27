#!/bin/bash
#This script is for Team 3 Group 2 backup and archiving of log files
read -p "Please enter your groupname: " groupname
today=`date +%m-%d-%y`
sudo mkdir team3gr2 && cd team3gr2
sudo cp /var/log/auth.log $groupname.$today.log
sudo tar -cvf t3gr2Backup.tar $(pwd)
sudo scp -i /home/ubuntu/mkey t3gr2Backup.tar ubuntu@172.31.23.89:/tmp
#sudo scp -i /home/ubuntu/team3key t3gr2Backup.tar ubuntu@172.31.12.36:/tmp/monitor
