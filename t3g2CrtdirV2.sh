#!/bin/bash
#This script creates directory and file
#Author: Team3 Group 2 EtechApp
read -p "Enter the directory to create: " dir
read -p "Enter the filename to create: " yourgroupname
sudo mkdir /home/$(logname)/$dir && cd $dir
sudo chown -R ubuntu . 
sudo echo "We are Etech Engineers" > $yourgroupname
