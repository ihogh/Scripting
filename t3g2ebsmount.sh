#!/bin/bash
#This script is to mount ebs volumes to EC2
#Author: Team3Group2Etechapp
echo "Welcome to Team3 Group 2 Etechapp"
read -p "please enter your directory name for the  mount point:" dir
disk=(f g)
for i in ${disk[@]}; do
        sudo mkfs -t ext4 /dev/xvd$i
        sudo mkdir /mnt/dir$i
        sudo mount /dev/xvd$i /mnt/dir$i
        echo "/dev/xvd$i /mnt/dir$i ext4 defaults 01" | sudo tee /etc/fstab   
done
lsblk
sleep 10
for i in ${disk[@]}; do
	sudo umount /dev/xvd$i /mnt/dir$i
done
