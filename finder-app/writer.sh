#!/bin/bash

# 10) Write a shell script finder-app/writer.sh as described below

# Accepts the following arguments: the first argument is a full path to a file (including filename) on the filesystem, referred to below as writefile; the second argument is a text string which will be written within this file, referred to below as writestr

# Exits with value 1 error and print statements if any of the arguments above were not specified

# Creates a new file with name and path writefile with content writestr, overwriting any existing file and creating the path if it doesn’t exist. Exits with value 1 and error print statement if the file could not be created.

# Example:    writer.sh /tmp/aesd/assignment1/sample.txt io


writefile=$1
writestr=$2

directory=$(dirname "$writefile")
echo "Directory: $directory"

# check input arguments
if [ -z "$writefile" ] || [ -z "$writestr" ]
then 
	echo "any of the arguments were not specified"
	exit 1

# checking directory, if doeen't exist then make one. 
elif [ ! -d "$writerfile" ]
then
#	echo "Parent directory does not exist"
#	echo "Creating directory: $directory"
	mkdir -p "$directory"
	echo "$writestr" > "$writefile"

# if directory exists then just overwite the file. 
else
	echo "$writestr" > "$writefile"
fi


# the below lines can replace else if and else. if "if"statement is executed, then it will exit, and otherwise run the code belwo.

#directory=$(dirname $writefile)
#mkdir -p $directory
#echo $writestr > $writefile




