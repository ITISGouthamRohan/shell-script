#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
# sleep 60 Duplicate the IP in different tab and run ps -ef and check for the process ID that is shown from step -10 command
sleep 60 &
echo "Process ID of last backgroung command: $!"