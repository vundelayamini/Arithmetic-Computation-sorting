#!/bin/bash -x

declare -A Allresult

echo "Enter three inputs are in descending order:"a b c
read a b c
echo "Three inputs are :" $a $b $c

result1=$(($a + $b * $c))
echo "Result for the second computation:"$result1

result2=$(($a * $b + $c))
echo "Result for the second computation:"$result2

result3=$(($c + $a / $c))
echo "Result for the third computation :"$result3

result4=$(($a % $b + $c))
echo "Result for the forth computation :"$result4

Allresult[1]=$result1
Allresult[2]=$result2
Allresult[3]=$result3
Allresult[4]=$result4

array[0]=$((result[1]))
array[1]=$((result[2]))
array[2]=$((result[3]))
array[3]=$((result[4]))

echo ${array[@]}

for (( a=0; a<3; a++ ))
do
	for (( c=0; c<3; c++ ))
	do
		if [ ${array[$c]} -ge ${array[$(($c+1))]} ]
		then
			temp=${array[$c]}
			array[$c]=${array[$(($c+1))]}
			array[$(($c+1))]=$temp
		fi
	done
done

echo ${array[@]}


