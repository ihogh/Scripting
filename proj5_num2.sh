#!/bin/bash
user="proj5"
password="iho5"
file="greatTeam"
dir="greatDir"
ips=( 172.31.80.122 172.31.82.67 172.31.87.119 )
echo "process started"

sudo cp /home/$LOGNAME$dir/$file 
if [ -n $file ]; then
for i in ${ips[@]}; do
sshpass -p $password scp $file $user@$i:/home/$user
done
sudo rm $file
sudo rm -rf $dir
echo "Thank you for choosing Etech Consulting for your Devops Training"
else
echo "There is an issue with your first script please go back there and fix it"
echo "Thanks for choosing Etech Consulting for Your Devops training!"
fi
