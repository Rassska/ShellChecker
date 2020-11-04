#!/bin/bash


myPath="/home/rasul/dev/OperatingSystems/ShellChecker/scripts/exp1.sh"

test () {

    echo -en '\n'
    echo -e "\e[1;33mTesting sum...\e[0m"
    echo -e "Testing sum..." >> error.txt
    if [[ $($myPath "sum" "5" "6") -eq 11 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(5, 6): $($myPath "sum" "5" "6")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(5, 6): $($myPath "sum" "5" "6")"
        
    fi
    if [[ $($myPath "sum" "1" "1") -eq 2 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(1, 1): $($myPath "sum" "1" "1")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(1, 1): $($myPath "sum" "1" "1")"
        
    fi
    if [[ $($myPath "sum" "10000" "10000") -eq 20000 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(10000, 10000): $($myPath "sum" "10000" "10000")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(10000, 10000): $($myPath "sum" "10000" "10000")"
        
    fi
    if [[ $($myPath "sum" "100" "+100") -eq 200 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(100, +100): $($myPath "sum" "100" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(100, +100): $($myPath "sum" "100" "+100")"
        
    fi
    if [[ $($myPath "sum" "0" "-50") -eq -50 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(0, -50): $($myPath "sum" "0" "-50")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(0, -50): $($myPath "sum" "0" "-50")"
        
    fi
    if [[ $($myPath "sum" "-0" "+0") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(-0, +0): $($myPath "sum" "-0" "+0")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(-0, +0): $($myPath "sum" "-0" "+0")"
        
    fi
    if [[ $($myPath "sum" "-10" "+100") -eq 90 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(-10, +100): $($myPath "sum" "-10" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(-10, +100): $($myPath "sum" "-10" "+100")"
        
    fi
    if [[ $($myPath "sum" "-1" "-10") -eq -11 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sum(-1, -10): $($myPath "sum" "-1" "-10")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sum(-1, -10): $($myPath "sum" "-1" "-10")"
        
    fi
    
    echo $($myPath "sum" "hello" "3")
    echo $($myPath "sum" "hello" "hello")
    echo $($myPath "sum" "3" "h")
    echo $($myPath "sum" "1" "2" "3")

    echo -en '\n'
    echo -e "\e[1;33mTesting sub...\e[0m"
    echo -en '\n' >> error.txt
    echo -e "Testing sub..." >> error.txt
    
    if [[ $($myPath "sub" "10" "6") -eq 4 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(10, 6): $($myPath "sub" "10" "6")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(10, 6): $($myPath "sub" "10" "6")"
        
    fi
    if [[ $($myPath "sub" "1" "1") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(1, 1): $($myPath "sub" "1" "1")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(1, 1): $($myPath "sub" "1" "1")"
        
    fi
    if [[ $($myPath "sub" "10000" "100000") -eq -90000 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(10000, 100000): $($myPath "sub" "10000" "100000")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(10000, 100000): $($myPath "sub" "10000" "100000")"
        
    fi
    if [[ $($myPath "sub" "100" "+100") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(100, +100): $($myPath "sub" "100" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(100, +100): $($myPath "sub" "100" "+100")"
        
    fi
    if [[ $($myPath "sub" "0" "-50") -eq 50 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(0, -50): $($myPath "sub" "0" "-50")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(0, -50): $($myPath "sub" "0" "-50")"
        
    fi
    if [[ $($myPath "sub" "-0" "+0") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(-0, +0): $($myPath "sub" "-0" "+0")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(-0, +0): $($myPath "sub" "-0" "+0")"
        
    fi
    if [[ $($myPath "sub" "-10" "+100") -eq -110 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(-10, +100): $($myPath "sub" "-10" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(-10, +100): $($myPath "sub" "-10" "+100")"
        
    fi
    if [[ $($myPath "sub" "-1" "-10") -eq 9 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "sub(-1, -10): $($myPath "sub" "-1" "-10")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "sub(-1, -10): $($myPath "sub" "-1" "-10")"
        
    fi
    
    echo $($myPath "sub" "hello" "3")
    echo $($myPath "sub" "hello" "hello")
    echo $($myPath "sub" "3" "h")
    echo $($myPath "sub" "1" "2" "3")
    
    echo -en '\n'
    echo -e "\e[1;33mTesting mul...\e[0m"
    echo -en '\n' >> error.txt
    echo -e "Testing mul..." >> error.txt
    
    if [[ $($myPath "mul" "10" "6") -eq 60 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(10, 6): $($myPath "mul" "10" "6")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(10, 6): $($myPath "mul" "10" "6")"
        
    fi
    if [[ $($myPath "mul" "1" "1") -eq 1 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(1, 1): $($myPath "mul" "1" "1")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(1, 1): $($myPath "mul" "1" "1")"
        
    fi
    if [[ $($myPath "mul" "10000" "10000") -eq 100000000 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(10000, 10000): $($myPath "mul" "10000" "10000")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(10000, 10000): $($myPath "mul" "10000" "10000")"
        
    fi
    if [[ $($myPath "mul" "100" "+100") -eq 10000 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(100, +100): $($myPath "mul" "100" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(100, +100): $($myPath "mul" "100" "+100")"
        
    fi
    if [[ $($myPath "mul" "0" "-50") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(0, -50): $($myPath "mul" "0" "-50")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(0, -50): $($myPath "mul" "0" "-50")"
        
    fi
    if [[ $($myPath "mul" "-0" "+0") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(-0, +0): $($myPath "mul" "-0" "+0")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(-0, +0): $($myPath "mul" "-0" "+0")"
        
    fi
    if [[ $($myPath "mul" "-10" "+100") -eq -1000 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(-10, +100): $($myPath "mul" "-10" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(-10, +100): $($myPath "mul" "-10" "+100")"
        
    fi
    if [[ $($myPath "mul" "-1" "-10") -eq 10 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "mul(-1, -10): $($myPath "mul" "-1" "-10")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "mul(-1, -10): $($myPath "mul" "-1" "-10")"
        
    fi
    
    echo $($myPath "mul" "hello" "3")
    echo $($myPath "mul" "hello" "hello")
    echo $($myPath "mul" "3" "h")
    echo $($myPath "mul" "1" "2" "3")

    echo -en '\n'
    echo -e "\e[1;33mTesting div...\e[0m"
    echo -en '\n' >> error.txt
    echo -e "Testing div..." >> error.txt
    
    if [[ $($myPath "div" "10" "5") -eq 2 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "div(10, 5): $($myPath "div" "10" "5")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "div(10, 5): $($myPath "div" "10" "5")"
        
    fi
    if [[ $($myPath "div" "1" "1") -eq 1 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "div(1, 1): $($myPath "div" "1" "1")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "div(1, 1): $($myPath "div" "1" "1")"
        
    fi
    if [[ $($myPath "div" "100000000000" "10") -eq 10000000000 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "div(100000000000, 10): $($myPath "div" "100000000000" "10")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "div(100000000000, 10): $($myPath "div" "100000000000" "10")"
        
    fi
    if [[ $($myPath "div" "100" "+100") -eq 1 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "div(100, +100): $($myPath "div" "100" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "div(100, +100): $($myPath "div" "100" "+100")"
        
    fi
    if [[ $($myPath "div" "0" "-50") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "div(0, -50): $($myPath "div" "0" "-50")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "div(0, -50): $($myPath "div" "0" "-50")"
        
    fi
    
    if [[ $($myPath "div" "-10" "+100") -eq 0 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "div(-10, +100): $($myPath "div" "-10" "+100")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "div(-10, +100): $($myPath "div" "-10" "+100")"
        
    fi
    if [[ $($myPath "div" "-10" "-10") -eq 1 ]]; then
        echo -ne "\e[32mtrue: \e[0m"
        echo "div(-10, -10): $($myPath "div" "-10" "-10")"
    else
        echo -ne "\e[31mfalse: \e[0m"
        echo "div(-10, -10): $($myPath "div" "-10" "-10")"
        
    fi
    
    echo $($myPath "div" "hello" "3")
    echo $($myPath "div" "hello" "hello")
    echo $($myPath "div" "3" "h")
    echo $($myPath "div" "1" "2" "3")
    echo $($myPath "div" "1" "0")
    
    echo -en '\n' >> error.txt
    echo -en '\n'
}
rm error.txt
touch error.txt

test



#// sum 1 2
#// sum 1000 1000
#// sum +100 100
#// sum +100 -100
#// sum 0 -50
#// sum -0 +0
#// sum -10 +1000
#// sum -1 -10
#// sum "hello" 3
#// sum "hello" "hello"
#// sum 3 "h"
#// sum 1 2 3



#// sub 5 3
#// sub 10 100000
#// sub +16 16
#// sub +16 -16
#// sub 0 -50
#// sub -0 +0
#// sub -10 +100000
#// sub -12 -12
#// sub "hello" 3
#// sub "hello" "hello"
#// sub 3 "h"
#// sub 1 2 3

#// mul 5 3
#// mul 10 100000
#// mul +16 16
#// mul +16 -16
#// mul 0 -50
#// mul -0 +0
#// mul -10 +100000
#// mul -12 -12
#// mul "hello" 3
#// mul "hello" "hello"
#// mul 3 "h"
#// mul 1 2 3

#// div 6 3
#// div 10 100000
#// div +16 16
#// div +16 -16
#// div 0 -50
#// div -0 +0
#// div -10 +100000
#// div -12 -12
#// div "hello" 3
#// div "hello" "hello"
#// div 3 "h"
#// div 1 2 3

