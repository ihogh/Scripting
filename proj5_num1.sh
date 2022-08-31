#!/bin/bash
#This project will achieve the following:
#1. Create any directory
#2. Create a file called $groupname within the directory
#3. Write into the file the word " We are Etech Engineers "
read -p "Please Enter the name of the directory you want to create: " directory
sudo mkdir $directory
sudo chown -R $LOGNAME $(pwd)
sudo echo " We are Etech Engineers " > $(pwd)/$directory/greatTeam
