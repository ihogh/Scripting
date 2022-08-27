#!/bin/bash
#This script will move file across multi-servers
#Author: Team3 Group 2 EtechApp
read -p "Enter your directory name created: " dir
read -p "Enter the name of file created: " yourgroupname
sudo mv $dir/$yourgroupname /home/ubuntu
ips=(172.31.95.71 172.31.84.106 172.31.89.109)
user="etechapp"
pswd="t3g2team"

if [ -s $yourgroupname ]
then
	for i in ${ips[@]}; do
		sudo sshpass -p "$pswd" scp $yourgroupname $user@$i:/home/ubuntu
	done
sudo rm $yourgroupname
sudo rmdir $dir
else
	echo "File is empty"
fi
