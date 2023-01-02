#!/bin/bash

# The script creates a tar+gz archive.
# The script accepts two parameters on the command line.
# First parameter is the folder to archive. Second is name and path of the archive.
# If executed with incorrect number of parameters or their values are incorrect displays a help message and exit.

if [ $# -ne 2 ]; then
  echo 'Wrong execution!'
  echo Usage $0 existing_folder non_existing_file
  exit 1

elif [[ ! -d $1 ]]; then
  echo Directory $1 does not exist. Choose an existing directory to archive.
  exit 2

elif [[ -f $2 ]]; then
  echo File $2 already exists. Choose a different file name.
  exit 3
fi

tar -czf $2 $1

exit 0
