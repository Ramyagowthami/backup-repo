#!/bin/bash
set -x
echo "below the menu for calculation"

echo -e "1)addition\n2)subtraction\n3)multiplication\n4)division\n*)exit"
echo "select any option from above menu"
read opt

case $opt in
	1) echo "enter numbers to add"
		read num
		sum=0
		for i in $num
		do
			sum=`expr $i + $sum`
		done
		echo " sum of $num is $sum"
		;;

	2) echo "enter number"
		read num1
		echo "enter number"
		read num2
		if [ $num1 -gt $num2 ];then
			sub=`expr $num1 - $num2`
		else
			sub=`expr $num2 - $num1`
		fi
		echo "diff bw $num1 and $num2 is $sub"
		;;

	3) echo "enter numbers to multiply"
                read num
                sum=1
                for i in $num
                do
                        sum=`expr $i \* $sum`
                done
                echo " mul of $num is $sum"
                ;;              

	4) echo "enter number"
                read num1
                echo "enter number"
                read num2
                if [ $num1 -gt $num2 ];then
                        sub=`expr $num1 % $num2`
                else
                        sub=`expr $num2 % $num1`
                fi
		echo "division of $num1 and $num2 is $sub"
                ;;

 
esac
		 
