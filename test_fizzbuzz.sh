#!/bin/bash
#
# Author: @xluffy
# Purpose: Unit test with shunit2
#

oneTimeSetUp() {
  . ./fizzbuzz.sh
}

testIfNumber1() {
  expected=$(_fizzbuzz 1)
  assertEquals 1 "$expected"
}

testIfNumber3() {
  expected=$(_fizzbuzz 3)
  assertEquals Fizz "$expected"
}

testIfNumber35() {
  expected=$(_fizzbuzz 35)
  assertEquals Buzz "$expected"
}

testIfNumber90() {
  expected=$(_fizzbuzz 90)
  assertEquals FizzBuzz "$expected"
}

. /usr/bin/shunit2
