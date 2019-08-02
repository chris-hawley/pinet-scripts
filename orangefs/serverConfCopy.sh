#!/bin/bash

numClients=16

for i in $(seq $numClients)
do
	sshpass -p "rock64" scp /home/chris/orangefs-server.conf rock64@192.168.2.$i:/opt/orangefs/etc/.
done
