#!/bin/bash

numClients=16

for i in $(seq $numClients)
do
  sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S rm -rf /mnt/oStorage/oMeta/ /mnt/oStorage/oData/"
  
  sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S mkdir /mnt/oStorage/oData"
  sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S mkdir /mnt/oStorage/oMeta"

  sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S /opt/orangefs/sbin/pvfs2-server /opt/orangefs/etc/orangefs-server.conf -a node$i -f"

done
