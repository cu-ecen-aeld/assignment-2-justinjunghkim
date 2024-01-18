#!/bin/bash
# assignment 1 instruction 9
# Accepts the following runtime arguments: the first argument is a path to a directory on the filesystem, referred to below as filesdir; the second argument is a text string which will be searched wihtin these files, reffered to below as seaerchstr. 
# Exits with return value 1 error and print statements if any of the parameters above were not specified
# Exits with return value 1 error and print statements if filesdir does not represent a directory on the filesystem
#Prints a message "The number of files are X and the number of matching lines are Y" where X is the number of files in the directory and all subdirectories and Y is the number of matching lines found in respective files, where a matching line refers to a line which contains searchstr (and may also contain additional content).

# Example invocation: 
# finder.sh /tmp/aesd/assignment1 linux

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ];
then 
	echo "any of parameters were not specified"
	exit 1
else
	# do something if the condition is met. 
	echo " both parameters are specified."
fi

if [ ! -d "$filesdir" ];
then
	echo "Invalid directory: $filesdir"
	exit 1
else
	X=$(find "$filesdir" -type f | wc -l | tr -d ' ')
	#X=$(grep -R $searchstr $filesdir -c | wc -l | tr -d ' ')
	Y=$(grep -r "$searchstr" "$filesdir"| wc -l | tr -d ' ')
	echo "$searchstr"
	echo "The number of files are $X and the number of matching lines are $Y"
fi



