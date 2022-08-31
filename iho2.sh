#this script will help us create a file and assign date created with user who runs the script
#!/bin/bash
echo -n " Please Enter your filename:"
read filename
today=`date +%m-%d-%y`
user=`whoami`
touch $filename.$user.$today
echo " Thank you! "
echo " Welcome to Aeskill LLC " >> $filename.$user.$today
df -h $filename.$user.$today
