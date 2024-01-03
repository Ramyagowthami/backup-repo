#!/bin/bash

echo "select a idli variety in below menu"

echo -e "1)Rava idli\n2)Thatta idli\n3)Idli vada\n*)exit"

echo "select a food from the above menu"
read item


	1) echo "enter a no of rava idlis"
		read num
		price=50
		amount=`expr $num \* $price`
		echo "Amount of $num rava idli is $amount"
	2) echo "enter a no of thatta idlis"
                read num
                price=30
                amount=`expr $num \* $price`
		echo "Amount of $num thatta idli is $amount"
	3) echo "enter a no of idli vada"
                read num
                price=40
                amount=`expr $num \* $price`
	        echo "Amount of $num idli vada is $amount"
		amount3=`$amount`
	 echo "tamount=`expr $amount1 + $amount2 + $amount3`"
	       
esac


	

