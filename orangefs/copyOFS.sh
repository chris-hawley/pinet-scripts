#!/bin/bash

numClients=16

for i in $(seq 9 $numClients)
do
        sshpass -p "rock64" rsync -ra --progress ~/pinetOFS/orangefs/ rock64@192.168.2.$i:/opt/orangefs/
done

