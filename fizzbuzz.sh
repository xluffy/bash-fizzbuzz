#!/bin/bash
#
# Author: @xluffy
# Purpose: FizzBuzz program
#

#set -x

_fizzbuzz() {
  n="$1"

  if [[ $((n%15)) == 0 ]]; then
    echo "FizzBuzz"
  elif [[ $((n%5)) == 0 ]]; then
    echo "Buzz"
  elif [[ $((n%3)) == 0 ]]; then
    echo "Fizz"
  else
    echo "$n"
  fi
}

main() {
  for i in {1..100}; do
    _fizzbuzz "$i"
  done
}

main "$@"
