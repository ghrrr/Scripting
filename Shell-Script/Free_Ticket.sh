#!/bin/bash


echo " Write in your age: "
read age

if [[ "$age" -le 7 || "$age" -ge 65 ]] ; then
    echo " You can walk in for free "
elif [[ "$age" -gt 7 && "$age" -lt 65 ]] ; then
    echo " You have to pay for ticket "
fi
