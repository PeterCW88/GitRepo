#!/bin/bash
echo "hello world from bash"
echo -n "my kernel version is:"
uname -r

function doSub()
{
  echo "test Sub"
}

doSub
