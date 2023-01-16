#!/bin/bash
# origdate
# Copies EXIF "Date and Time (Original)" field value into Creation Date
search_dir=/home/ali/Desktop/manipthis
for entry in "$search_dir"/*
do
  filename=$(basename -- "$entry")
  extension="${filename##*.}"
  # echo "Full file path: $entry"
  # echo "File name: $filename"
  # echo "File extension: $extension"
  # /bin/bash /home/ali/Desktop/script4.sh /home/ali/Desktop/manipthis/$filename
  RETURN_VARIABLE=$(./script4.sh "/home/ali/Desktop/manipthis/$filename")
  # echo "This is just a test $RETURN_VARIABLE"
  newfilename="${RETURN_VARIABLE}.${extension}"
  echo "$newfilename"
  mv $entry /home/ali/Desktop/manipthis/$newfilename
done