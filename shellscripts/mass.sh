#!/bin/bash


eliminate_astrd ()
{
	initial_mass=$1
	shift
	for astrd in "$@"
	do

		if [ $initial_mass -ge $astrd ]
		then
			initial_mass=$((initial_mass + astrd))
		else
			echo "false"
			return
		fi
	done
	echo "true"
}

initial_mass=5
astrd=(4 10 1)
eliminate_astrd "$initial_mass" "${astrd[@]}"



