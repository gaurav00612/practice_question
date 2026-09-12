#!/bin/bash

echo "Name please"
read name

greeting() {

  echo "Hello $name, welcome to Bash!"
}

greeting
