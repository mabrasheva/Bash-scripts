#!/bin/bash

# Get file names from file. For every row in the file creates file.

if [ $# -ne 1 ]; then
  echo 'Wrong execution!'
  echo "Usage: $0 file_name"
  exit 1
fi

for row in $(cat $1 | tr '[:upper:]' '[:lower:]' | sed 's/  */\_/g' | sed 's/ $//'); do
  touch $row

done

exit 0
