mkdir /home/rock64/newMods && mkdir /home/rock64/newMods/modules
echo rock64 | sudo -S mkdir /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/kernel/orangefs

sshpass -p "rock64" scp /home/chris/newMods/modules/* rock64@node$i:/home/rock64/newMods/modules/.
sshpass -p "rock64" scp /home/chris/newMods/orangefs.ko rock64@node$i:/home/rock64/newMods/orangefs.ko

echo rock64 | sudo -S cp /home/rock64/newMods/modules/* /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/."
echo rock64 | sudo -S cp /home/rock64/newMods/orangefs.ko /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/kernel/fs/orangefs/.


 sshpass -p "rock64" scp /home/chris/newMods/modules/* rock64@node$i:/home/rock64/newMods/modules/.
   sshpass -p "rock64" scp /home/chris/newMods/orangefs.ko rock64@node$i:/home/rock64/newMods/orangefs.ko
   sshpass -p "rock64" ssh -t rock64@node$i "echo rock64 | sudo -S cp /home/rock64/newMods/modules/* /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/."
   sshpass -p "rock64" ssh -t rock64@node$i "echo rock64 | sudo -S cp /home/rock64/newMods/orangefs.ko /lib/modules/4.20.0-rc6-1075-ayufan-g6b3dd2a83c96/kernel/fs/orangefs/."
