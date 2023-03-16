#!/bin/bash

HOSTNAME=$(hostname)

echo “Created by David Kolesar. 2023 \n” 
echo “This script is running on $HOSTNAME \n”
echo “This script prompts the user for a filename and reports the file type. \n” 
echo “Enter the file path: \n”

read FILE
if [ -f “$FILE” ]
  then
    echo “$FILE is a reguler file”
elif [ -d “$FILE” ]
  then
    echo “$FILE is a directory”
else
    echo “$FILE is another type of file”
fi
ls -l $FILE
