#!/usr/bin/env bash

for i in {1..100}; do
    if [[ $(($i % 15)) -eq 0 ]]; then
        echo "FizzBuzz"
        continue
    fi
    if [[ $(($i % 3)) -eq 0 ]]; then
        echo "Fizz"
        continue
    fi
    if [[ $(($i % 5)) -eq 0 ]]; then
        echo "Buzz"
        continue
    fi
    echo "$i"
done
