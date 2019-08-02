#!/bin/bash

numClients=17

for i in $(seq $numClients)
do
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "mkdir /home/rock64/newMods && mkdir /home/rock64/newMods/modules"
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S mkdir /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/kernel/orangefs"
   sshpass -p "rock64" scp /home/chris/newMods/modules/* rock64@192.168.2.$i:/home/rock64/newMods/modules/.
   sshpass -p "rock64" scp /home/chris/newMods/orangefs.ko rock64@192.168.2.$i:/home/rock64/newMods/orangefs.ko
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S cp /home/rock64/newMods/modules/* /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/."
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S cp /home/rock64/newMods/orangefs.ko /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/kernel/orangefs/."
   sshpass -p "rock64" ssh -t rock64@192.168.2.$i "echo rock64 | sudo -S mkdir /mnt/orangefs"
  
done
