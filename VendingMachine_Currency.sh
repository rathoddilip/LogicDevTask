#!/bin/bash 

declare -a notes
declare -a notecounter=()
echo "Available notes"
notes=(1000 500 100 50 20 10 1)
echo ${notes[@]}


read -p "Enter any amount: " amount

for ((i=0; i<${#notes[@]};i++))
	do
		if [[ $amount -ge ${notes[i]} ]]
			then
				notecounter=$(( $amount/${notes[i]} ))
				amount=$(($amount-$notecounter*${notes[i]}))

			for ((j=0; j<${#notecounter[@]}; j++))
				do
					echo "${notecounter[@]} : notes of ${notes[i]}"
				done
		fi
done





