#!/bin/bash
ips=(172.31.80.122 172.31.82.67 172.31.87.119)

for i in ${ips[@]}; do
scp -i mkey fileTransfer1.txt ubuntu@$i:/tmp
done
echo "Good Job"

