#!/usr/bin/env bash
# File: guessinggame.sh

function guessnumber {  
    currentDirCount=`ls -l | wc -l`
    echo "Guess a number of files in the current directory:"
    read guessNum
    
    while [[ $guessNum -ne $currentDirCount ]];
    do
        echo "Guess again!"
        read guessNum
        if [[ $guessNum -gt $currentDirCount ]]
        then
            echo "It's high"
        elif [[ $guessNum -lt $currentDirCount ]]
        then
            echo "It's low"
        else
            echo "Congratulations, you guess it right!"
        fi
    done
    echo "Well Done"
}
guessnumber