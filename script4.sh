#!/bin/bash
# origdate
# Copies EXIF "Date and Time (Original)" field value into Creation Date
f=$1
DATE=`exif -t "Date and Time (Original)" $f | grep Value | awk -F": " '{print $2}'`
DATE=$(sed 's/ /_/g' <<< "$DATE")
DATE=$(sed 's/://g '<<< "$DATE")
echo "$DATE"
# echo "Original date: $DATE"