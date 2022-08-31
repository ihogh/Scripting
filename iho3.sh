#this file will modify the way time is printed the previous script
#!/bin/bash
echo " This the property of Aeskill LLC all rights are reserved!"
read -p "Please Enter the name of your file: " filename
user=`whoami`
today=`date +%m-%d-%y`
touch $filename.$user.$today
echo "Awesome work!"
echo " This is a great job from awesome team! $filename create on `date` " >> $filename.$user.$today
