#!/bin/bash

while true; do

	clear
	echo "======================================================="
	echo "OS mini Project: File and Directory Management Program!"
	echo "======================================================="
	echo "" #create some space
	echo "========= Here an option, Please Choose one =========="
	echo "" #create some space
	echo "1: List files and sub-directories."
	echo "2: Create Backup."
	echo "3: Count files in a directory."
	echo "4: Display a usage of disk."
	echo "5: Search a for a file."
	echo "6: Compress files or directory."
	echo "7: exit a program."
	echo "" #some space

	#ask user for input option
	read -p "Please input number (1 to 7): " pick

	case $pick in
		1) bash list_files.sh ;;
		2) bash backup.sh ;;
		3) bash count_files.sh ;;
		4) bash disk_usage.sh ;;
		5) bash search_file.sh ;;
		6) bash compress.sh ;;
		7) echo "Exiting a program..."; exit 0;;
		*) echo "Invalid input! please try again." ;;
		esac
		echo "" #some space
		read -p "Press Enter to continue..."
done
