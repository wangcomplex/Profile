#!/bin/bash


if [ -n $1 ]
then
    if [[ $1 == "dump" ]]
    then
        echo $1
    elif [[ $1 == "category_preference" ]]
    then
        echo $1
    elif [[ $1 == "brand_preference" ]]
    then
        echo $1
    elif [[ $1 == "help" || $# != 1 ]]
    then
        echo "usage: sh schedule.sh dump|category_preference|brand_preference"
    fi
fi
