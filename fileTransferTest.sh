#!/bin/bash
password="iho5"
user="proj5"
ips=(172.31.80.122 172.31.82.67 172.31.87.119)

for i in ${ips[@]}; do
	sshpass -p $password scp test4.txt $user@$i:/tmp
done
echo "Good Job"
