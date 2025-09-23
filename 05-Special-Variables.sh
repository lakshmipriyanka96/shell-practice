#!/bin/bash
echo "all variables passed to the script: $@"
echo "all variables passed to the script: $*"

echo "script name: $0"

echo "current working directory: $PWD"

echo "current user: $USER"

echo "home directory: $HOME"

echo "pid of the script: $$"

sleep 50 &

echo "pid of the last command in baground: $!"
















