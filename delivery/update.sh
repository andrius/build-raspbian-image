#!/bin/sh

if [ "`uname -m`" <> "armv7l" ]; then
  echo "This script will be executed at mounted raspbian enviroment"
  exit 1
fi

echo "Please check environment variables etc, this script can be executed ONLY within RPI environment!"
echo "When tasks done, type \"exit\" to return"
echo ""

bash

