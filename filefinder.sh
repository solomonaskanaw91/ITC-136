# Where did I put that file?: Write a script that utilizes locate, find, 
# whereis and which to determine the location of a lost file and whether or not it is in the PATH, if it is an executable file.


#!/bin/bash

printf "\n Please enter a file name: "
read fname

#find the file
filefound=$( readlink -f $fname )

#locate the file


#whereis the file


#executable?
executablefile=$( ls -l $fname )

#printf "\n Please enter the path to check "
#read path2check


echo -en "\e[94m Your File: $executablefile
 Found: $filefound
"


#if find $path2check -name $fname -print -quit |
   #grep -q '^'; then
  #echo "the file exists!"
#else
  #echo "the file does not exist!"
#fi
