#!/bin/bash
#This script will move file across multi-servers
#Author: Team3 Group 2 EtechApp
sudo mv group2/team3gr2 /home/ubuntu
ips=(172.31.95.71 172.31.84.106 172.31.89.109)
user="etechapp"
pswd="t3g2team"

if [ -s team3gr2 ]
then
	for i in ${ips[@]}; do
		sudo sshpass -p "$pswd" scp team3gr2 $user@$i:/home/ubuntu
	done
sudo rm team3gr2
sudo rmdir group2
else
	echo "File is empty"
fi
