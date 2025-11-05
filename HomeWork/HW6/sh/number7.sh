#!/bin/bash

number_to_guess=$(( RANDOM % 100 + 1 ))
attempts=5

echo "Guess the number.You have 5 tries: "

while [ $attempts -gt 0 ]; do
    read -p "Enter the number: " user_guess

        if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
        echo "Please enet a number"
        continue
    fi

      if [ "$user_guess" -lt 1 ] || [ "$user_guess" -gt 100 ]; then
        echo "Enter a number from 1 to 100. try again."
        continue
    fi

    attempts=$((attempts - 1))

    if [ "$user_guess" -eq "$number_to_guess" ]; then
        echo "You WON!"
        break
    elif [ "$user_guess" -lt "$number_to_guess" ]; then
        echo "more! $attempts"
    else
        echo "less! $attempts"
    fi
done

if [ $attempts -eq 0 ]; then
    echo "You lost. number: $number_to_guess"
fi
