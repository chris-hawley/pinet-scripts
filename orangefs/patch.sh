#!/bin/bash

numClients=17

for i in $(seq $numClients)
do
	sshpass -p "rock64" scp /home/chris/Dropbox/PiNet/storageChange.patch rock64@192.168.2.$i:/home/rock64/.
	sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S patch /opt/orangefs/etc/orangefs-server.conf /home/rock64/storageChange.patch"
done
