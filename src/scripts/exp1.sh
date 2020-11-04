#!/bin/bash

isNumber='^[+-]?[0-9]+$'

if ! [[ -z "$4" ]]; then
    echo -ne "\e[31mfalse: \e[0m"
    echo "$1($2, $3, $4): The amount of arguments must be equal to 3" >> error.txt
    echo "$1($2, $3, $4)"
    exit -1
fi
if [[ $2 =~ $isNumber ]]; then
    if [[ $3 =~ $isNumber ]]; then
        if [[ "$1" != "sum" && "$1" != "sub" && "$1" != "mul" && "$1" != "div" ]]; then
            echo -ne "\e[31mfalse: \e[0m"
            echo "$1($2, $3): There is no such function. Please recheck the 2nd arg" >> error.txt
            echo "$1($2, $3)"
            exit -1
        fi
        
        if [[ $1 = "sum" ]]; then
            echo "$(( $2 + $3 ))"
        elif [[ $1 = "sub" ]]; then
            echo $(( $2 - $3 ))
        elif [[ $1 = "mul" ]]; then
            echo $(( $2 * $3 ))
        elif [[ $1 = "div" ]]; then
            if [[ $3 == 0 ]]; then
                echo -ne "\e[31mfalse: \e[0m"
                echo "$1($2, $3): Divided by zeroooo!!!" >> error.txt
                echo "$1($2, $3)"
                exit -2
            
            else
                echo $(( $2 / $3 ))
            fi
        fi
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "$1($2, $3): The last arg isn't an integer number" >> error.txt
        echo "$1($2, $3)"
        exit -1
    fi
else
    echo -ne "\e[31mfalse: \e[0m"
    echo "$1($2, $3): The 3rd arg isn't an integer number" >> error.txt
    echo "$1($2, $3)"
    exit -2
fi