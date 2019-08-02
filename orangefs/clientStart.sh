#!/bin/bash

numClients=16

for i in $(seq 10 $numClients)
do
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S modprobe orangefs"
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S /opt/orangefs/sbin/pvfs2-client -p /opt/orangefs/sbin/pvfs2-client-core"
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S mount -t pvfs2 tcp://192.168.2.1:3334/orangefs /mnt/orangefs"
  
done
