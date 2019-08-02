#!/bin/bash

numClients=17

for i in $(seq $numClients)
do
     sshpass -p "rock64" ssh -t rock64@192.168.2.$i "lsblk | grep mmcblk0p7"

done
