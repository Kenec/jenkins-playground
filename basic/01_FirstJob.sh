#!/bin/bash

basic() {
  echo "This is the start of the Jenkin Basic Script"
  echo $FirstNumber + $SecondNumber
  echo "Thank you for executibg me! :)"
}

build_on_commit() {
  echo "This should build on commit"
}

main() {
  basic
  build_on_commit
}

basic