#!/bin/bash

numClients=16

for i in $(seq 9 -1 1)
do
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S /opt/orangefs/sbin/pvfs2-server -a node$i /opt/orangefs/etc/orangefs-server.conf"

done
