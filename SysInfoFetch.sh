#!/bin/bash
#Author: v-filip


echo "Welcome to SysInfoFetch.sh!"
echo

while true
do
	echo "x) Exit"
	echo
	echo "System Infomration:"
	echo
	echo "1a) Display karnel release information"
	echo "2a) Display system's uptime"
	echo "3a) Display system's hostname"
	echo "4a) Display system's IP address'"
	echo "5a) Display users who are online"
	echo
	echo "Hardware Information:"
	echo
	echo "1b) Display CPU infomration"
	echo "2b) Display RAM usage"
	echo "3b) Display PCI devices"
	echo "4b) Display USB devices"
	echo ""
	read -p "Please make your selection: " ANSWER
	echo
	case $ANSWER in
		1a)
			echo "----------------------------------------------------------------------------------"
			uname -r
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		2a)
			echo "----------------------------------------------------------------------------------"
		 	uptime --pretty
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		3a)
			echo "----------------------------------------------------------------------------------"
			hostname
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		4a)
			echo "----------------------------------------------------------------------------------"
			hostname -I
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		5a)	
			echo "----------------------------------------------------------------------------------"
			w
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		1b)	
			echo "----------------------------------------------------------------------------------"
			cat /proc/cpuinfo
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		2b)	
			echo "----------------------------------------------------------------------------------"
			free -h
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		3b)	
      			echo "----------------------------------------------------------------------------------"
			lspci -tv
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		4b)	
      			echo "----------------------------------------------------------------------------------"
			lsusb -tv
			echo "----------------------------------------------------------------------------------"
			echo
			;;

		x | X)
			echo "----------------------------------------------------------------------------------"
			echo "Thank you for using SysInfoFetch.sh! Goodbye!"
			echo "----------------------------------------------------------------------------------"
			echo
			break
			;;

		*)	
      			echo "----------------------------------------------------------------------------------"
			echo "Invalid input, please use one of the provided selections (Example. 1a)!"
			echo "----------------------------------------------------------------------------------"
			echo
			;;

	esac
done
