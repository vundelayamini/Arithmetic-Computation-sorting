#!/bin/bash -x
echo "Enter the three inputs"
read a b c
echo "Three inputs are :" $a $b $c

result1=$(( $a + $b * $c ))
echo " Result for the firt computation :"$result1

result2=$(( $a * $b + $c ))
echo "Result for the second computation :"$result2

result3=$(( $c + $a / $b ))
echo "Result for the third computation :"$result3

result4=$(( $a % $b + $c ))
echo "Result for the forth computation :"$result4
