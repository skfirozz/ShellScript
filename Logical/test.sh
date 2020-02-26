#!/bin/sh
myfunc()
{
  input1=$1
  input2=$2
  a="hi this is firoz $input1"
  b="this is akhilesh $input2"
}

a=hello
b=banglore
myfunc $a $b
echo "a is $a"
echo "b is $b"
