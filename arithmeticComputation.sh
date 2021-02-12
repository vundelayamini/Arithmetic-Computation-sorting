
#!/bin/bash -x

echo "Enter three inputs are :"a b c
read a b c
echo "Three inputs are :" $a $b $c

declare -A Allresult
counter=1

result1=$(($a + $b * $c))
echo "Result for the first computation:" $result1

result2=$(($a * $b + $c))
echo "Result for the second computation:"$result2

result3=$(($c + $a / $c))
echo "Result for the third computation :"$result3

result4=$(($a % $b + $c))
echo "Result for the forth computation :"$result4

echo "${!Allreult[@]}"
echo "All result ${result[@]}"
echo "${!result[@]}"

counter[1]=${Allresult[result1]}
counter[2]=${Allresult[result2]}
counter[3]=${Allresult[result3]}
counter[4]=${Allresult[result4]}

echo  ${counter[@]}

