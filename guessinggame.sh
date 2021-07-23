#!/usr/bin/env bash
# File: guessinggame.sh

echo "Start program"
echo "How many files are in the current directory? Take a guess"
read guess 

files=3

function game {
if [[ $guess != $files ]]
then
    while [[ $guess != $files ]]
    do
        if [[ $guess -lt $files ]]
        then
            echo "Your guess was too low. Try again:"
            read guess
        
        elif [[ $guess -gt $files ]]
        then
            echo "Your guess was too high. Try again:"
            read guess
        else
            echo "Try again:"
            read guess
        fi
    done
fi

echo "You guessed correctly!"
echo "End Program"
}

game 