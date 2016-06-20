#!/bin/bash
#
# Author: @xluffy
# Purpose: Unit test with shunit2
#

oneTimeSetUp() {
  . ./fizzbuzz.sh &> /dev/null
}

testIfNumber1() {
  input=$(_fizzbuzz 1)
  assertEquals 1 "$input"
}

testIfNumber3() {
  input=$(_fizzbuzz 3)
  assertEquals Fizz "$input"
}

testIfNumber35() {
  input=$(_fizzbuzz 35)
  assertEquals Buzz "$input"
}

testIfNumber90() {
  input=$(_fizzbuzz 90)
  assertEquals FizzBuzz "$input"
}

. /usr/bin/shunit2
