#!/bin/bash
#how much disk space has been used: df -h
diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}') #we are trimming the df -h so we are just getting a percent and putting in variable

#how much memory is free: free -m
memfree=$( free -mh | grep Mem: | awk '{print $7}' )

#how many connections there are to the current machine: netstat
connections=$( netstat | grep tp )

#who is logged in: who
users=$( who )


echo "This is a snapshot of your current system:
                     Disk Used: $diskused
                     Free Memory: $memfree
                     Logged in Users: $users
                    
                    
Open Internet Connections:
$connections
"

echo "
colar info:
http://misc.flogisoft.com/bash/tip_colors_and_formatting
http://wiki.bash-hackers.org/scripting/style
https://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
"
