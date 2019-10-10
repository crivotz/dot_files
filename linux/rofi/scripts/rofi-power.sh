#!/bin/bash

OPTIONS="\tLogout\n\tShutdown\n\tReboot"

option=`echo -e $OPTIONS | awk '{print $1}' | tr -d '\r\n\t'`
if [ "$@" ]
then
	case $@ in
		*Logout)
			i3-msg exit
			;;
		*Shutdown)
			systemctl poweroff
			;;
		*Reboot)
			systemctl reboot
			;;
	esac
else
	echo -e $OPTIONS
fi
