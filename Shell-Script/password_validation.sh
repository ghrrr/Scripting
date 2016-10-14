#!/bin/sh

echo "enter the password"
read password

len="${#password}"

retCodes=0

if test $len -ge 8 ; then

	echo "$password" | grep -q [A-Z]
	retCodes=$(($retCodes + $?))

	echo "$password" | grep -q [a-z]
	retCodes=$(($retCodes + $?))

	echo "$password" | grep -q [0-9]
	retCodes=$(($retCodes + $?))

    if [[ $retCodes -eq 0 ]]; then
      echo "Strong password"
    else
      echo "Weak password"
    fi

else
    echo "password lenght should be greater than or equal 8"
fi
