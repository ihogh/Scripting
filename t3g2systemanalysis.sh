#!/bin/bash
#This script will perform systems analysis
#Author: Team3Group2Etechapp
sudo apt update -y
cat /etc/os-release > team3group2etechapp.log
echo $SHELL
df -h
free -g
lscpu
top
whoami
echo "This script ran from `pwd` location"
echo "Welcome to Etech Consulting Devops MasterClass"
echo $?
