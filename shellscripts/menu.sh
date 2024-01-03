#!/bin/bash

echo "below is the menu"
echo -e "\n1)searchword\n2)chechname\n3)findfile\n4)createlnk\n5)edit\n*)exit\n"
echo "select any option from above menu"
read opt

case $opt in
	1) /home/ec2-user/shellscripts/serchword.sh
		;;
	2) /home/ec2-user/shellscripts/checkname.sh
		;;
	3)  /home/ec2-user/shellscripts/findfile.sh
		;;
	4)  /home/ec2-user/shellscripts/createlnk.sh
		;;
	5)  /home/ec2-user/shellscripts/editfile.sh
		;;
	*) echo "selected invalid option"
		;;
esac

