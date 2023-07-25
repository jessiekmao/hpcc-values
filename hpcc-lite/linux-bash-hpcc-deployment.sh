#!/bin/bash

 

usage()

{

  echo "Usage: helm-run.sh [options] <deploy-options-file>"

  echo "    -h     Display help"

  echo "    -a     helm action. The default is install. The command other action is template"

  echo "    -d     Base directory for all optional yaml files"

  echo "    -o     output file. It is primarily for template action"

  exit

}

 

 

# Variables

BASE_DIR=

ACTION=install

OUTPUT=

CMD=helm

 

# Process command line options

while getopts “ha:d:o:” opt

do

  case $opt in

    a) ACTION=$OPTARG ;;

    d) BASE_DIR=$OPTARG ;;

    o) OUTPUT=$OPTARG ;;

    h) usage   ;;

  esac

done

shift $(( $OPTIND-1 ))

 

# Must provide deploy-options-file

if [ -z "$1" ]

then

   echo "Missing deploy options file"

   exit 1

fi

#echo "input file: $1"

 

INPUT_FILE=$1

if [ ! -e $INPUT_FILE ]

then

  echo "Input deploy options file, $INPUT_FILE, doesn't exist"

  exit 1

fi

 

CMD="$CMD $ACTION"

while read line

do

   echo "$line"

  echo $line | grep -q "^[[:space:]]*HELM_OPTIONS[[:space:]]*="

  if [ $? -eq 0 ]

  then

    CMD="$CMD $(echo $line | sed 's/HELM_OPTIONS[[:space:]]*=[[:space:]]*//g' \

    | sed 's/^\"//' | sed 's/\"$//'  )"

    break

  fi

done < $INPUT_FILE

 

while read line

do

   #echo "$line"

  echo $line | grep -q "^[[:space:]]*HELM_OPTIONS[[:space:]]*="

  if [ $? -ne 0 ]

  then

    if [ -n "$BASE_DIR" ]

    then

       CMD="$CMD -f ${BASE_DIR}/$line"

    else

       CMD="$CMD -f $line"

    fi

  fi

done < $INPUT_FILE

 

[ -n "$OUTPUT" ] && CMD="$CMD > $OUTPUT"

echo "$CMD"

#eval ${CMD}