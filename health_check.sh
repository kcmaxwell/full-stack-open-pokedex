#!/bin/bash

echo "Hello from shell script"

RESULT=$(curl https://black-waterfall-4926.fly.dev/health | grep "ok")

echo
if [ "$RESULT" != "ok" ]; then
  echo "Failed"
  exit 1
else
  echo "Success"
  exit 0
fi