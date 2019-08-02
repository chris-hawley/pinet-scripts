#!/bin/bash

numClients=16

for i in $(seq 1 9)
do
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S killall -9 pvfs2-server"

done
