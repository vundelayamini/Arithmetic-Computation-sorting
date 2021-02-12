#!/bin/bash -x

echo "Enter three inputs are :"a b c
read a b c
echo "Three inputs are :" $a $b $c

declare -A Allresult

result1=$(($a + $b * $c))
echo "Result for the first computation:" $result1

result2=$(($a * $b + $c))
echo "Result for the second computation:"$result2

result3=$(($c + $a / $c))
echo "Result for the third computation :"$result3

result4=$(($a % $b + $c))
echo "Result for the forth computation :"$result4

echo "All result ${result[@]}"
echo "${!result[@]}"


