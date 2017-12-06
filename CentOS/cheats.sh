#!/bin/bash

OUTFILE='/home/ryan/.bashrc'

echo 'alias settings="sublime ~/.bashrc"' >> $OUTFILE

echo 'alias sublime="subl"' >> $OUTFILE

echo 'alias please="sudo $(fc -ln -1)"' >> $OUTFILE

echo "murder()
{
    kill -9 \$(ps aux | grep \$1 | awk '{print \$2}')
}" >> $OUTFILE

echo "docker-test()
{
    DEFAULTCMD="/bin/sh"
    # We must have a file to build and run
    if [ -z "$1" ]
    then
      echo "Specifiy docker file to test"
      return
    fi

   	# Command to run, if none use default
    if [ -z "$2" ]
    then
      RUNCOMMAND="$1 ${2-$DEFAULTCMD}"
    else
      echo "$*"
      RUNCOMMAND=$*	 
    fi

    docker build -f $1 -t $1 .
    docker run -it $RUNCOMMAND
}" >> $OUTFILE
