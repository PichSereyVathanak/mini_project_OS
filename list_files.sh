#!/bin/bash

echo "==========================================================="
echo "Currently you are in option: List files and sub-directories"
echo "==========================================================="

source log_action.sh
#promt user for input directory
read -p "Enter a path for directory that you want to list file: " dir

if [ -d "$dir" ]; then
	echo "list files and sub-directory in '$dir':"

	#check if the directory is empty
	if [ -z "$(ls -A ""$dir)" ]; then
		echo "$dir is an empty directory."
		log_action "$dir is an empty directory"

	else #if not will display list of file in directory
		ls -l "$dir"

		#check if we successfully list file and sub-direct
		if [ $? -eq 0 ]; then
			log_action "list file and sub-direct in '$dir'"
		
		else
			log_action "fail to list file and sub-direct in '$dir'"
		fi
	fi

else
	echo "Invalid directory Path! -.-"
	log_action "fail to list file and sub-direct in '$dir'"
fi
